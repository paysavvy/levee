# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'levee/version'

Gem::Specification.new do |spec|
  spec.name          = "levee"
  spec.version       = Levee::VERSION
  spec.authors       = ["Mike Martinson"]
  spec.email         = ["mike.j.martinson@gmail.com"]
  spec.summary       = %q{Flexible builder template for mapping complex rails post params onto ActiveRecord models}
  spec.description   = Levee.gem_description
  spec.homepage      = "https://github.com/mmartinson/levee"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activerecord", ">=4.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end


