$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "facebook_share_link/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "facebook_share_link"
  s.version     = FacebookShareLink::VERSION
  s.authors     = ["Josh Crews"]
  s.email       = ["josh@joshcrews.com"]
  s.homepage    = "https://github.com/joshcrews/facebook_share_link"
  s.summary     = "Builds a URL to create a hyperlink to share something to facebook through the Feed Dialog API"
  s.description = "Great for adding share on Facebook links in emails"

  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "activesupport"  
  s.add_development_dependency "rspec"

end
