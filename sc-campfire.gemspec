# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sc-campfire/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Immanuel H\303\244ussermann"]
  gem.email         = ["haeussermann@gmail.com"]
  gem.description   = %q{Enabling screenconcept campfire deployment notifications}
  gem.summary       = %q{Enabling screenconcept campfire deployment notifications}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "sc-campfire"
  gem.require_paths = ["lib"]
  gem.version       = Sc::Campfire::VERSION
  gem.add_dependency("httparty")
end
