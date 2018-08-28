# -*- encoding: utf-8 -*-
# stub: annotate_gem 0.0.13 ruby lib

Gem::Specification.new do |s|
  s.name = "annotate_gem".freeze
  s.version = "0.0.13"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ivan Tse".freeze]
  s.date = "2018-07-17"
  s.description = "Clarify your dependencies by adding a detailed comment to each line in Gemfile specifying the gem's summary and its website if any. ".freeze
  s.email = ["ivan.tse1@gmail.com".freeze]
  s.executables = ["annotate-gem".freeze, "annotate_gem".freeze]
  s.files = ["bin/annotate-gem".freeze, "bin/annotate_gem".freeze]
  s.homepage = "https://github.com/ivantsepp/annotate_gem".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Add comments to your Gemfile with each dependency's description.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bundler>.freeze, ["~> 1.1"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_development_dependency(%q<mocha>.freeze, ["~> 1.1"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.1"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_dependency(%q<mocha>.freeze, ["~> 1.1"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.1"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<mocha>.freeze, ["~> 1.1"])
  end
end
