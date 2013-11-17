# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acme/umlautify/version'

Gem::Specification.new do |spec|
  spec.name          = "acme-umlautify"
  spec.version       = Acme::Umlautify::VERSION
  spec.authors       = ["Tony Zanella"]
  spec.email         = ["tony.zanella@gmail.com"]
  spec.description   = %q{Ädd ümläüts tö ëvërÿthïng!}
  spec.summary       = %q{Türn ÿöür strïngs üp tö ëlëvën.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = Dir.glob("{spec,test}/**/*.rb")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
