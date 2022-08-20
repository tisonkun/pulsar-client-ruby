# frozen_string_literal: true

require_relative 'lib/pulsar/client/version'

Gem::Specification.new do |spec|
  spec.name = 'pulsar-client'
  spec.version = Pulsar::Client::VERSION
  spec.author = 'Apache Pulsar Contributors'
  spec.email = 'dev@pulsar.apache.org'
  spec.license = 'Apache-2.0'
  spec.summary = 'Apache Pulsar native client for Ruby'
  spec.description = spec.summary
  spec.homepage = 'https://pulsar.apache.org/'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/apache/pulsar-client-ruby'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = %w[Gemfile Rakefile LICENSE README.md] +
               Dir.glob('{lib,spec}/**/*', File::FNM_DOTMATCH).reject { |f| File.directory?(f) } +
               Dir.glob('*.gemspec')
  spec.bindir = 'bin'
  spec.executables = %w[]
  spec.require_paths = %w[lib]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
