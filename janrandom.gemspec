Gem::Specification.new do |s|
  s.name        = 'janrandom'
  s.version     = '0.0.1'
  s.date        = '2013-11-14'
  s.summary     = "Fake users for Janrain Capture"
  s.description = "A toolkit for generating and managing randomized dummy users for your Capture instance"
  s.authors     = ["Nathaniel Taintor"]
  s.email       = 'than@janrain.com'
  s.files       = ["lib/janrandom.rb","lib/data/en-janrain.yml"]
  s.executables << "janrandom"
  s.homepage    = "http://github.com/thanj/janrandom"
  s.license     = 'MIT'
  s.add_runtime_dependency 'thor'
  s.add_runtime_dependency 'i18n'
  s.add_runtime_dependency 'faker'
  s.add_runtime_dependency 'rest-client'
  s.add_runtime_dependency 'terminal-table'
end
