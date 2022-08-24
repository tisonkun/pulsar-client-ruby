# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
load 'protobuf/tasks/compile.rake'

desc 'Generate protobuf code.'
task :compile do
  ::Rake::Task['protobuf:compile'].invoke(
    'pulsar/proto',
    'definitions',
    'lib',
    nil, # default plugin
    nil  # default file extension
  )
end

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-rake'
  task.requires << 'rubocop-rspec'
end

task default: %i[spec rubocop]
