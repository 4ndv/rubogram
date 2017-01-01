# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubogram/version'

Gem::Specification.new do |spec|
  spec.name          = "rubogram"
  spec.version       = Rubogram::VERSION
  spec.authors       = ["Andrey Viktorov"]
  spec.email         = ["andreyviktorov@outlook.com"]

  spec.summary       = %q{Rubogram is a small Faraday-based library to communicate with Telegram Bot API}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.10"
  spec.add_dependency "faraday_middleware", "~> 0.10"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
