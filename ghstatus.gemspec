# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ghstatus/version'

Gem::Specification.new do |spec|
  spec.name          = "ghstatus"
  spec.version       = GHStatus::VERSION
  spec.authors       = ["Ile Eftimov"]
  spec.email         = ["ileeftimov@gmail.com"]
  spec.summary       = %q{GitHub status in a gem.}
  spec.description   = %q{Get GitHub's status via the command line. Or use it in an app.}
  spec.homepage      = "https://github.com/fteem/ghstatus"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "rest-client", "~> 1.7"
  spec.add_dependency "rainbow", "~> 2.0"
end
