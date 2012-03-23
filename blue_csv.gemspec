$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blue_csv/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blue_csv"
  s.version     = BlueCsv::VERSION
  s.authors     = ["Artan Sinani"]
  s.email       = ["artisinani@gmail.com"]
  s.homepage    = "https://github.com/rtsinani/blue_csv"
  s.summary     = "Renders CSV files as view templates."
  s.description = "Renders CSV files as view templates."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"

  s.add_development_dependency "capybara"
  s.add_development_dependency "sqlite3"
end
