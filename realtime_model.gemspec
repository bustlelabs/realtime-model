# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'realtime_model/version'

Gem::Specification.new do |spec|
  spec.name          = "realtime_model"
  spec.version       = RealtimeModel::VERSION
  spec.authors       = ["Axel Molina"]
  spec.email         = ["axel@axelmolina.com"]
  spec.summary       = %q{Redis-backed models.}
  spec.description   = %q{Supports has_many relationships and attribute indexing for searching.}
  spec.homepage      = "http://rubygems.org/gems/realtime_model"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.0"

  spec.add_development_dependency "bundler", "~> 1.7.3"
  spec.add_development_dependency "rake", "~> 10.1.1"
  spec.add_development_dependency "rspec", "~> 3.2.0"
  spec.add_dependency "redis-objects", "~> 1.1.0"
end
