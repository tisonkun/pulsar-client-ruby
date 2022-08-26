#!/usr/bin/env ruby
# frozen_string_literal: true

require 'bundler/setup'
require 'pulsar/client'
require 'pulsar/proto/PulsarApi.pb'

# 1. Setup socket
socket = Socket.new(:INET, :STREAM, 0)
socket.setsockopt(Socket::IPPROTO_TCP, Socket::TCP_NODELAY, 1)
socket.setsockopt(Socket::SOL_SOCKET, Socket::SO_KEEPALIVE, 1)
sockaddr = Socket.sockaddr_in(6650, '127.0.0.1')
begin
  socket.connect_nonblock(sockaddr)
rescue IO::WaitWritable
  socket.wait_writable
  begin
    socket.connect_nonblock(sockaddr)
  rescue Errno::EISCONN
    # The socket is connected, we're good!
  end
end

# 2. Prepare CommandConnect payload
command = Pulsar::Proto::BaseCommand.new(
  type: Pulsar::Proto::BaseCommand::Type::CONNECT,
  connect: Pulsar::Proto::CommandConnect.new(
    client_version: "Pulsar-Client-Ruby-#{Pulsar::Client::VERSION}",
    protocol_version: Pulsar::Proto::ProtocolVersion::V19.tag
  )
)
command_pb = command.to_proto.bytes
bytes = Array(command_pb.size + 4).pack('N')
bytes += Array(command_pb.size).pack('N')
bytes += command_pb

# 3. Send CommandConnect
socket.write(bytes)

# 4. Read response (CommandConnected)
results = socket.read
proto = Pulsar::Proto::BaseCommand.decode(results[4..])
puts proto.to_json
