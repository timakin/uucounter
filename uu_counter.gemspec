$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "uu_counter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "uu_counter"
  s.version     = UUCounter::VERSION
  s.authors     = ["timakin"]
  s.email       = ["timaki.st@gmail.com"]
  s.homepage    = "https://github.com/timakin/uucounter"
  s.summary     = "UUCounter is the plugin to trace unique user pageviews with easy integration."
  s.description = "UUCounter is the plugin to trace unique user pageviews with easy integration. It is inspired by [Ahoy](https://github.com/ankane/ahoy), but limited to a few functions for simplicity."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.2.1"

  s.add_development_dependency "mysql2"
end
