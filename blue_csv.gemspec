$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blue_csv/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blue_csv"
  s.version     = BlueCsv::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BlueCsv."
  s.description = "TODO: Description of BlueCsv."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"

  s.add_development_dependency "capybara"
  s.add_development_dependency "sqlite3"
end
