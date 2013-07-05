# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  # Metadata
  s.name     = 'rspec-system-serverspec'
  s.version  = '1.0.0'
  s.authors  = ['Hunter Haugen']
  s.email    = ['h.haugen@gmail.com']
  s.homepage = 'https://github.com/puppetlabs/rspec-system-serverspec'
  s.summary  = 'Serverspec rspec-system plugin'
  s.license  = 'Apache2'

  # Manifest
  s.files         = `git ls-files`.split($/)
  s.test_files    = `git ls-files -- {test,spec,features}/*_spec.rb`.split('\n')
  s.executables   = `git ls-files -- bin/*`.split('\n').map{ |f| File.basename(f) }
  s.require_paths = ['lib', 'resources']

  # Dependencies
  s.required_ruby_version = '>= 1.8.7'
  s.add_runtime_dependency 'rspec-system', '~> 2.0'
  s.add_runtime_dependency 'serverspec', '~> 0.6.0'
  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
end
