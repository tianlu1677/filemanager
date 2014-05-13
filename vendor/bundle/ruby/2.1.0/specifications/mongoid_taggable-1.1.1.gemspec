# -*- encoding: utf-8 -*-
# stub: mongoid_taggable 1.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "mongoid_taggable"
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Wilker Lucio", "Kris Kowalik", "Adam St. John", "Caleb Clark"]
  s.date = "2013-03-22"
  s.description = "Mongoid Taggable provides some helpers to create taggable documents."
  s.email = ["cclark@mobilizationlabs.com"]
  s.extra_rdoc_files = ["LICENSE", "README.textile"]
  s.files = ["LICENSE", "README.textile"]
  s.homepage = "http://github.com/wilkerlucio/mongoid_taggable"
  s.rubygems_version = "2.2.2"
  s.summary = "Mongoid taggable behaviour"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<mongoid>, [">= 3"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<mongoid>, [">= 3"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<mongoid>, [">= 3"])
  end
end
