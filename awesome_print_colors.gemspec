$:.push File.expand_path("../lib", __FILE__)

require 'awesome_print_colors'

Gem::Specification.new do |s|
  s.name        = "awesome_print_colors"
  s.version     = AwesomePrintColors::VERSION
  s.authors     = ["Andrew Horsman"]
  s.email       = ["self@andrewhorsman.net"]
  s.homepage    = "http://github.com/basicxman/awesome_print_colors"

  s.summary     = "Core colour schemes for Michael Dvorkin's awesome_print"
  s.description = "A collection of colour schemes for Michael Dvorkin's awesome_print.  This codebase is used to separate cruft from the main awesome_print library."

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- spec/*`.split("\n")

  s.add_dependency 'awesome_print'
  s.add_development_dependency 'rspec'
end
