# -*- encoding: utf-8 -*-
# stub: itamae 1.9.11 ruby lib

Gem::Specification.new do |s|
  s.name = "itamae".freeze
  s.version = "1.9.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ryota Arai".freeze]
  s.date = "2017-03-08"
  s.email = ["ryota.arai@gmail.com".freeze]
  s.executables = ["itamae".freeze]
  s.files = ["bin/itamae".freeze]
  s.homepage = "https://github.com/itamae-kitchen/itamae".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Simple Configuration Management Tool".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<specinfra>.freeze, ["< 3.0.0", ">= 2.64.0"])
      s.add_runtime_dependency(%q<hashie>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<ansi>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<schash>.freeze, ["~> 0.1.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<serverspec>.freeze, ["~> 2.1"])
      s.add_development_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_development_dependency(%q<docker-api>.freeze, ["~> 1.20"])
      s.add_development_dependency(%q<fakefs>.freeze, [">= 0"])
      s.add_development_dependency(%q<fluent-logger>.freeze, [">= 0"])
    else
      s.add_dependency(%q<thor>.freeze, [">= 0"])
      s.add_dependency(%q<specinfra>.freeze, ["< 3.0.0", ">= 2.64.0"])
      s.add_dependency(%q<hashie>.freeze, [">= 0"])
      s.add_dependency(%q<ansi>.freeze, [">= 0"])
      s.add_dependency(%q<schash>.freeze, ["~> 0.1.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<serverspec>.freeze, ["~> 2.1"])
      s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_dependency(%q<docker-api>.freeze, ["~> 1.20"])
      s.add_dependency(%q<fakefs>.freeze, [">= 0"])
      s.add_dependency(%q<fluent-logger>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<thor>.freeze, [">= 0"])
    s.add_dependency(%q<specinfra>.freeze, ["< 3.0.0", ">= 2.64.0"])
    s.add_dependency(%q<hashie>.freeze, [">= 0"])
    s.add_dependency(%q<ansi>.freeze, [">= 0"])
    s.add_dependency(%q<schash>.freeze, ["~> 0.1.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<serverspec>.freeze, ["~> 2.1"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_dependency(%q<docker-api>.freeze, ["~> 1.20"])
    s.add_dependency(%q<fakefs>.freeze, [">= 0"])
    s.add_dependency(%q<fluent-logger>.freeze, [">= 0"])
  end
end
