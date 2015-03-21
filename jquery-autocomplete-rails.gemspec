# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquery-autocomplete-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Matt Cowley']
  gem.email         = ['madcowley@gmail.com']
  gem.description   = %q{juery-autocomplete is a javascript library for autocomplete. This gem integrates the library with the rails asset pipeline.}
  gem.summary       = %q{Integrate jquery-autocomplete javascript library with Rails asset pipeline}
  gem.homepage      = 'https://github.com/madcowley/jquery-autocomplete-rails'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'jquery-autocomplete-rails'
  gem.require_paths = ['lib']
  gem.version       = JqueryAutocomplete::Rails::VERSION

  gem.add_dependency 'railties', '>= 3.0'
  gem.add_dependency 'coffee-rails', '>= 3.2'
  gem.add_dependency 'sass-rails', '>= 3.2'
  gem.add_dependency 'compass-rails', '>= 1.1.2'

  gem.add_development_dependency 'bundler', '>= 1.0'
  gem.add_development_dependency 'rails', '>= 3.0'
  gem.add_development_dependency 'thor', '>= 0.14'
end
