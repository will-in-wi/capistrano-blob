# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/blob/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-blob"
  spec.version       = Capistrano::Blob::VERSION
  spec.authors       = ['William Johnston']
  spec.email         = ['will@johnstonclan.net']

  spec.summary       = 'Plugin for Capistrano to download and deploy a file archive.'
  spec.description   = 'Plugin for Capistrano to download and deploy a file archive, such as a tarball, zipfile, et cetera.'
  spec.homepage      = 'https://github.com/will-in-wi/capistrano-blob'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'capistrano', '~> 3.5'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
