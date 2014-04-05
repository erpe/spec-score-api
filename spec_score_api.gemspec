$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spec_score_api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spec_score_api"
  s.version     = SpecScoreApi::VERSION
  s.authors     = ["rene paulokat"]
  s.email       = ["rene@so36.net"]
  s.homepage    = "https://github.com/erpe/spec-score-api"
  s.summary     = "Rails-Engine  SpecScoreApi."
  s.description = "Description of SpecScoreApi."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.test_files = Dir["spec/**/*"]
  s.add_dependency "rails", "~> 4.0.4"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency "sqlite3"
end
