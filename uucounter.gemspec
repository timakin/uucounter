$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "uucounter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "uucounter"
  s.version     = Uucounter::VERSION
  s.authors     = ["timakin"]
  s.email       = ["timaki.st@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Uucounter."
  s.description = "TODO: Description of Uucounter."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
