# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cucumber-rails}
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aslak Helles\303\270y", "Dennis Bl\303\266te", "Rob Holland"]
  s.date = %q{2011-04-05}
  s.description = %q{Cucumber Generators and Runtime for Rails}
  s.email = %q{cukes@googlegroups.com}
  s.files = ["features/allow_rescue.feature", "features/capybara_javascript_drivers.feature", "features/inspect_query_string.feature", "features/install_cucumber_rails.feature", "features/mongoid.feature", "features/named_selectors.feature", "features/no_database.feature", "features/rerun_profile.feature", "features/rest_api.feature", "features/routing.feature", "features/select_dates.feature", "features/step_definitions/cucumber_rails_steps.rb", "features/support/env.rb", "spec/cucumber/web/tableish_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://cukes.info}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.1}
  s.summary = %q{cucumber-rails-0.4.1}
  s.test_files = ["features/allow_rescue.feature", "features/capybara_javascript_drivers.feature", "features/inspect_query_string.feature", "features/install_cucumber_rails.feature", "features/mongoid.feature", "features/named_selectors.feature", "features/no_database.feature", "features/rerun_profile.feature", "features/rest_api.feature", "features/routing.feature", "features/select_dates.feature", "features/step_definitions/cucumber_rails_steps.rb", "features/support/env.rb", "spec/cucumber/web/tableish_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cucumber>, [">= 0.10.1"])
      s.add_runtime_dependency(%q<rack-test>, [">= 0.5.7"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.4.4"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.10"])
      s.add_development_dependency(%q<aruba>, [">= 0.3.4"])
      s.add_development_dependency(%q<rails>, [">= 3.0.5"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 1.3.3"])
      s.add_development_dependency(%q<rspec-rails>, [">= 2.2.0"])
      s.add_development_dependency(%q<capybara>, [">= 0.4.1"])
      s.add_development_dependency(%q<webrat>, [">= 0.7.3"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0.6.0"])
      s.add_development_dependency(%q<mongoid>, [">= 2.0.0"])
      s.add_development_dependency(%q<bson_ext>, [">= 1.3.0"])
      s.add_development_dependency(%q<akephalos>, [">= 0.2.5"])
    else
      s.add_dependency(%q<cucumber>, [">= 0.10.1"])
      s.add_dependency(%q<rack-test>, [">= 0.5.7"])
      s.add_dependency(%q<nokogiri>, [">= 1.4.4"])
      s.add_dependency(%q<bundler>, [">= 1.0.10"])
      s.add_dependency(%q<aruba>, [">= 0.3.4"])
      s.add_dependency(%q<rails>, [">= 3.0.5"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 1.3.3"])
      s.add_dependency(%q<rspec-rails>, [">= 2.2.0"])
      s.add_dependency(%q<capybara>, [">= 0.4.1"])
      s.add_dependency(%q<webrat>, [">= 0.7.3"])
      s.add_dependency(%q<database_cleaner>, [">= 0.6.0"])
      s.add_dependency(%q<mongoid>, [">= 2.0.0"])
      s.add_dependency(%q<bson_ext>, [">= 1.3.0"])
      s.add_dependency(%q<akephalos>, [">= 0.2.5"])
    end
  else
    s.add_dependency(%q<cucumber>, [">= 0.10.1"])
    s.add_dependency(%q<rack-test>, [">= 0.5.7"])
    s.add_dependency(%q<nokogiri>, [">= 1.4.4"])
    s.add_dependency(%q<bundler>, [">= 1.0.10"])
    s.add_dependency(%q<aruba>, [">= 0.3.4"])
    s.add_dependency(%q<rails>, [">= 3.0.5"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 1.3.3"])
    s.add_dependency(%q<rspec-rails>, [">= 2.2.0"])
    s.add_dependency(%q<capybara>, [">= 0.4.1"])
    s.add_dependency(%q<webrat>, [">= 0.7.3"])
    s.add_dependency(%q<database_cleaner>, [">= 0.6.0"])
    s.add_dependency(%q<mongoid>, [">= 2.0.0"])
    s.add_dependency(%q<bson_ext>, [">= 1.3.0"])
    s.add_dependency(%q<akephalos>, [">= 0.2.5"])
  end
end
