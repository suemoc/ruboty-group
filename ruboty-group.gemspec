# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/group/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-group"
  spec.version       = Ruboty::Group::VERSION
  spec.authors       = ["Yohei Susa"]
  spec.email         = ["suemocs@gmail.com"]
  spec.summary       = "Return groups from member list"
  spec.homepage      = "https://github.com/suemoc/ruboty-group"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
