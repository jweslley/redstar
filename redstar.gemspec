$:.push File.expand_path("../lib", __FILE__)

require "redstar/version"

Gem::Specification.new do |s|
  s.name        = "redstar"
  s.version     = Redstar::VERSION
  s.authors     = ["Jonhnny Weslley"]
  s.email       = ["jw@jonhnnyweslley.net"]
  s.homepage    = "http://github.com/jweslley/redstar"
  s.summary     = "Model generators for Rails"
  s.description = "Model generators for Rails"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"
end
