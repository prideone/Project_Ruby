$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "geokit/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "geokit"
  s.version     = Geokit::VERSION
  s.authors     = ["prideone"]
  s.email       = ["stephane.bolu@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Geokit."
  s.description = "TODO: Description of Geokit."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
