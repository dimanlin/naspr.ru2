# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{oa-vkontakte}
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Recobra"]
  s.date = %q{2011-03-26}
  s.description = %q{OmniAuth extension for vkontakte.ru authentication}
  s.email = %q{oruenu@gmail.com}
  s.files = ["spec/oa-vkontakte_spec.rb", "spec/omniauth/strategires/vkontakte_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/oruen/oa-vkontakte}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{oa-vkontakte}
  s.rubygems_version = %q{1.6.1}
  s.summary = %q{OmniAuth extension for vkontakte.ru authentication}
  s.test_files = ["spec/oa-vkontakte_spec.rb", "spec/omniauth/strategires/vkontakte_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<oa-core>, [">= 0.1.6"])
      s.add_development_dependency(%q<rspec>, ["~> 2.1.0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.5.6"])
    else
      s.add_dependency(%q<oa-core>, [">= 0.1.6"])
      s.add_dependency(%q<rspec>, ["~> 2.1.0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<rack-test>, ["~> 0.5.6"])
    end
  else
    s.add_dependency(%q<oa-core>, [">= 0.1.6"])
    s.add_dependency(%q<rspec>, ["~> 2.1.0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<rack-test>, ["~> 0.5.6"])
  end
end
