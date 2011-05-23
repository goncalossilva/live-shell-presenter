# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "live_shell_presenter/version"

Gem::Specification.new do |s|
  s.name        = "Live Shell Presenter"
  s.version     = LiveShellPresenter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Gonçalo Silva"]
  s.email       = ["goncalossilva@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Make live shell-based demonstrations with ease. }
  s.description = %q{Live Shell Presenter reads a list of commands (and your specified options) and prints them, along with other user-defined actions (copy to clipboard/execute)}

  s.rubyforge_project = "live_shell_presenter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
