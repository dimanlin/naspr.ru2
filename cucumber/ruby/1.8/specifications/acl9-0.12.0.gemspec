# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{acl9}
  s.version = "0.12.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["oleg dashevskii"]
  s.date = %q{2010-01-03}
  s.description = %q{Role-based authorization system for Rails with a nice DSL for access control lists}
  s.email = %q{olegdashevskii@gmail.com}
  s.files = ["test/helpers_test.rb", "test/support/schema.rb", "test/support/models.rb", "test/support/controllers.rb", "test/dsl_base_test.rb", "test/access_control_test.rb", "test/test_helper.rb", "test/roles_test.rb"]
  s.homepage = %q{http://github.com/be9/acl9}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.1}
  s.summary = %q{Yet another role-based authorization system for Rails}
  s.test_files = ["test/helpers_test.rb", "test/support/schema.rb", "test/support/models.rb", "test/support/controllers.rb", "test/dsl_base_test.rb", "test/access_control_test.rb", "test/test_helper.rb", "test/roles_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jeremymcanally-context>, [">= 0.5.5"])
      s.add_development_dependency(%q<jnunemaker-matchy>, [">= 0.4.0"])
    else
      s.add_dependency(%q<jeremymcanally-context>, [">= 0.5.5"])
      s.add_dependency(%q<jnunemaker-matchy>, [">= 0.4.0"])
    end
  else
    s.add_dependency(%q<jeremymcanally-context>, [">= 0.5.5"])
    s.add_dependency(%q<jnunemaker-matchy>, [">= 0.4.0"])
  end
end
