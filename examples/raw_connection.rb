#!/usr/bin/env ruby
# frozen_string_literal: true

require 'bundler/setup'
require 'pulsar/client'
require 'pulsar/proto/PulsarApi_pb'
require 'socket'

# 1. Setup socket
socket = Socket.new(Socket::AF_INET, Socket::SOCK_STREAM, 0)
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
    protocol_version: Pulsar::Proto::ProtocolVersion.resolve(:v19)
  )
)
command_pb = command.to_proto
bytes = Array(command_pb.size + 4).pack('N')
bytes += Array(command_pb.size).pack('N')
bytes += command_pb

# 3. Send CommandConnect
socket.write(bytes)

# 4. Read response (CommandConnected)
def read_size(socket)
  bytes = socket.read(4)
  bytes&.unpack('N')&.first.to_i
end

frame_size = read_size(socket)
puts "frame_size: #{frame_size}"

cmd_size = read_size(socket)
puts "cmd_size: #{cmd_size}"

results = socket.read(cmd_size)
proto = Pulsar::Proto::BaseCommand.decode(results)
puts proto.to_json
