# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alphabet_calc/version'

Gem::Specification.new do |spec|
  spec.name          = "alphabet_calc"
  spec.version       = AlphabetCalc::VERSION
  spec.authors       = ["Pinnapong Silpsakulsuk"]
  spec.email         = ["pinnapong@gmail.com"]
  spec.summary       = %q{An alphabet calculator.}
  spec.description   = %q{Use alphabets as base26 numbers start with a = 0.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
