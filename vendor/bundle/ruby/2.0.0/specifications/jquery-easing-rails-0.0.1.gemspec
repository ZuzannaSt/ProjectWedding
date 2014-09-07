# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "jquery-easing-rails"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andrew Kozloff"]
  s.date = "2013-10-21"
  s.description = "Jquery easing plugin for Rails 3.1+ asset pipeline"
  s.email = ["demerest@gmail.com"]
  s.homepage = "https://github.com/rocsci/jquery-easing-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Jquery easing plugin for Rails 3.1+ asset pipeline"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.1.0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<rails>, [">= 3.1.0"])
      s.add_development_dependency(%q<gem-release>, [">= 0.4.1"])
    else
      s.add_dependency(%q<railties>, [">= 3.1.0"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<rails>, [">= 3.1.0"])
      s.add_dependency(%q<gem-release>, [">= 0.4.1"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.1.0"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<rails>, [">= 3.1.0"])
    s.add_dependency(%q<gem-release>, [">= 0.4.1"])
  end
end
