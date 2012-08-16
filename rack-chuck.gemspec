# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)
require 'rack/chuck/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Henrik Paulini", "Ben Rexin", "Matthias Bauer", "Waldemar Griebele", "Stefan Rohde"]
  gem.email         = ["contact@delicious-development.com"]
  gem.description   = %q{Rack middleware to add chuck norris fact headers}
  gem.summary       = %q{}
  gem.homepage      = "https://github.com/delicious-development/rack-chuck"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rack-chuck"
  gem.require_paths = ["lib"]
  gem.version       = Rack::Chuck::VERSION

  gem.add_dependency "rack", ">= 1.0"

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rack"
end
