# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'colored_logger/version'

Gem::Specification.new do |spec|
  spec.name          = "colored_logger"
  spec.version       = ColoredLogger::VERSION
  spec.authors       = ["Lawrence Norton"]
  spec.email         = ["lawrence@lawrencenorton.com"]
  spec.summary       = %q{A rails logger formatter & colorizer}
  spec.description   =  "Better formatting and color for your logger "
  spec.homepage      = "https://github.com/lawrence79/colored_logger"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency "activesupport", "~> 4.0.0"

end
