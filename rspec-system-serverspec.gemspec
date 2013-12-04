# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  # Metadata
  s.name          = 'rspec-system-serverspec'
  s.version       = '1.0.1'
  s.authors       = ['Hunter Haugen']
  s.email         = ['h.haugen@gmail.com']
  s.summary       = 'Serverspec rspec-system plugin'
  s.description   = 'Integration plugin for combining the Serverspec testing library with rspec-system'
  s.homepage      = 'https://github.com/puppetlabs/rspec-system-serverspec'
  s.license       = 'Apache2'

  # Manifest
  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/.+_spec\.rb})
  s.require_paths = ['lib']

  # Dependencies
  s.required_ruby_version = '>= 1.8.7'
  s.add_runtime_dependency 'rspec-system', '~> 2.0'
  s.add_runtime_dependency 'serverspec', '~> 0.0'
  s.add_runtime_dependency 'specinfra', '~> 0.0'
  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
end
