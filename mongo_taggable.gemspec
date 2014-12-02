# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongo_taggable/version'

Gem::Specification.new do |spec|
  spec.name          = "mongo_taggable"
  spec.version       = MongoTaggable::VERSION
  spec.authors       = ["deepak Shinde"]
  spec.email         = ["deepak2726@gmail.com"]
  spec.summary       = %q{A ruby gem for acts_as_taggable to mongo}
  spec.description   = %q{A ruby gem for acts_as_taggable to mongo}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.99"
  spec.add_development_dependency "mongo_mapper", "~> 0.13.0"
  spec.add_development_dependency "bson_ext", "~> 1.11.1"
  spec.add_development_dependency "faker", "~> 1.1.2"
  spec.add_development_dependency "pry-byebug"
end
