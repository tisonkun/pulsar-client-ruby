# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

desc 'Generate protobuf code.'
task :generate do
  command = []
  command << 'protoc'
  command << '-I' << './definitions'
  command << '--ruby_out' << './lib'
  command << Dir['definitions/**/*.proto'].join(' ')
  real_command = command.join(' ')
  puts(real_command)
  system(real_command)
end

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-rake'
  task.requires << 'rubocop-rspec'
end

task default: %i[spec rubocop]
