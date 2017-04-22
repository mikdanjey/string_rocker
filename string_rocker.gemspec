# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'string_rocker/version'

Gem::Specification.new do |spec|
  spec.name          = "string_rocker"
  spec.version       = StringRocker::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Mikdanjey"]
  spec.email         = ["mikdanjey@gmail.com"]
  spec.summary       = %q{Converts highly string to friendly Title}
  spec.description   = %q{Converts highly string to friendly Title}
  spec.homepage      = "https://github.com/mikdanjey/string_rocker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_runtime_dependency 'i18n', '~> 0.5'
  spec.add_runtime_dependency 'faker', '~> 1.7.3'
end
