# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active-record/vercomp/version'

Gem::Specification.new do |spec|
  spec.name          = 'active-record-vercomp'
  spec.version       = Activerecord::Vercomp::VERSION
  spec.authors       = ['eendroroy']
  spec.email         = ['eendroroy@gmail.com']

  spec.summary       = "Register PostgreSQL 'VERSION' column type in rails"
  spec.description   = "Register PostgreSQL 'VERSION' column type in rails"
  spec.homepage      = 'https://github.com/eendroroy/active-record-vercomp'
  spec.license       = 'MIT'

  raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.' unless spec.respond_to?(:metadata)
  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop'
end
