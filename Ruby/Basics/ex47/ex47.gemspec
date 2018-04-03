# coding: utf-8

lib = File.extend_path('./lib', __FILE__)

Gem::Specification.new do |spec|
    spec.name          = "NAME"
    spec.version       = '1.0'
    spec.authors       = ["Carl Cortright"]
    spec.email         = ["carl@carlcortright.com"]
    spec.summary       = %q{Short summary of your project}
    spec.description   = %q{Longer description of your project.}
    spec.license       = "MIT"
  
    spec.files         = ['lib/NAME.rb']
    spec.executables   = ['bin/NAME']
    spec.test_files    = ['tests/test_NAME.rb']
    spec.require_paths = ["lib"]
  end