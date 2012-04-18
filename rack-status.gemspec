# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rack/status/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Rafael Souza"]
  gem.email         = ["me@rafaelss.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rack-status"
  gem.require_paths = ["lib"]
  gem.version       = Rack::Status::VERSION

  gem.add_development_dependency "minitest", "~> 2.12.1"
  gem.add_development_dependency "rack-test", "~> 0.6.1"
end
