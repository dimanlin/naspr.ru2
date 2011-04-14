# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file iwas generated by Cucumber-Rails and is only here to get you a head start
# These step definitions are thin wrappers around the Capybara/Webrat API that lets you
# visit pages, interact with widgets and make assertions about page content.
#
# If you use these step definitions as basis for your features you will quickly end up
# with features that are:
#
# * Hard to maintain
# * Verbose to read
#
# A much better approach is to write your own higher level step definitions, following
# the advice in the following blog posts:
#
# * http://benmabey.com/2008/05/19/imperative-vs-declarative-scenarios-in-user-stories.html
# * http://dannorth.net/2011/01/31/whose-domain-is-it-anyway/
# * http://elabs.se/blog/15-you-re-cuking-it-wrong 
#


require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

Допустим /^я на главной странице$/ do
  visit(root_path)
end

Допустим /^я на "([^\"]*)"$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|я )зайду на (.+)$/ do |page_name|
  visit path_to(page_name)
end

Допустим /^я на странице "([^\"]*)"$/ do |page_name|
  visit path_to(page_name)
end

Если /^я введу в скрытое поле "([^\"]*)" значение "([^\"]*)"$/ do |field, value|
  set_hidden_field(field, :to => value)
end

Given /^(?:я )?(?:введу в|заполнил) поле "([^\"]*)" значение(?:м)? "([^\"]*)" в селекторе "([^\"]*)"$/ do |field, value, selector|
  with_scope(selector) do
    fill_in(field, :with => value)
  end
end

Given /^я выберу "([^\"]*)" в "([^\"]*)"$/ do |field, selector|
  with_scope(selector) do
    choose(field)
  end
end

Given /^(?:я )?выберу "([^\"]*)" из (опций|селекта) "([^\"]*)"$/ do |option, label|
  select(option, :from => label)
end



When /^(?:|я )нажму "([^\"]*)"(?: в "([^\"]*)")?$/ do |button, selector|
  with_scope(selector) do
    click_button(button)
  end
end

Допустим /^я (?:перешёл|перехожу|перейду) по ссылке "([^\"]*)"$/ do |link|
  click_link(link)
end


When /^(?:|я )перейду по ссылке "([^\"]*)" в "([^\"]*)"$/ do |link, parent|
  click_link_within(parent, link)
end

When /^(?:|я )(?:|введу|запишу) в поле "([^\"]*)" значение "([^\"]*)"$/ do |field, value| 
  fill_in(field, :with => value)
end

Допустим /^я в поле "([^\"]*)" запишу "([^\"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^(?:|я )введу "([^\"]*)" в "([^\"]*)"$/ do |value, field|
  fill_in(field, :with => value)
end

# Use this to fill in an entire form with data from a table. Example:
#
#   When я fill in the following:
#     | Account Number | 5002       |
#     | Expiry date    | 2009-11-01 |
#     | Note           | Nice guy   |
#     | Wants Email?   |            |
#
# TODO: Add support for checkbox, select og option
# based on naming conventions.
#

When /^(?:|я )выберу "([^\"]*)" из "([^\"]*)"$/ do |value, field|
  select(value, :from => field)
end

# Use this step in conjunction with Rail's datetime_select helper. For example:
# When я select "December 25, 2008 10:00" as the date and time
When /^(?:|я )select "([^\"]*)" as the date and time$/ do |time|
  select_datetime(time)
end

# Use this step when using multiple datetime_select helpers on a page or
# you want to specify which datetime to select. Given the following view:
#   <%= f.label :preferred %><br />
#   <%= f.datetime_select :preferred %>
#   <%= f.label :alternative %><br />
#   <%= f.datetime_select :alternative %>
# The following steps would fill out the form:
# When я select "November 23, 2004 11:20" as the "Preferred" date and time
# And я select "November 25, 2004 10:30" as the "Alternative" date and time
When /^(?:|я )select "([^\"]*)" as the "([^\"]*)" date and time$/ do |datetime, datetime_label|
  select_datetime(datetime, :from => datetime_label)
end

# Use this step in conjunction with Rail's time_select helper. For example:
# When я select "2:20PM" as the time
# Note: Rail's default time helper provides 24-hour time-- not 12 hour time. Webrat
# will convert the 2:20PM to 14:20 and then select it.
When /^(?:|я )select "([^\"]*)" as the time$/ do |time|
  select_time(time)
end

# Use this step when using multiple time_select helpers on a page or you want to
# specify the name of the time on the form.  For example:
# When я select "7:30AM" as the "Gym" time
When /^(?:|я )select "([^\"]*)" as the "([^\"]*)" time$/ do |time, time_label|
  select_time(time, :from => time_label)
end

# Use this step in conjunction with Rail's date_select helper.  For example:
# When я select "February 20, 1981" as the date
When /^(?:|я )select "([^\"]*)" as the date$/ do |date|
  select_date(date)
end

# Use this step when using multiple date_select helpers on one page or
# you want to specify the name of the date on the form. For example:
# When я select "April 26, 1982" as the "Date of Birth" date

When /^(?:|я )выберу "(.*)" как дату "(.*)"$/ do |date, date_label|
  day,month,year = date.split(' ')

  select year, :from => "#{date_label}_1i"
  select month, :from => "#{date_label}_2i"
  select day, :from => "#{date_label}_3i"
end


#When /^(?:|я )select "([^\"]*)" as the "([^\"]*)" date$/ do |date, date_label|
#  select_date(date, :from => date_label)
#end

When /^(?:|я )установлю (?:флажок|галку) в "([^\"]*)"$/ do |field|
  check(field)
end

When /^(?:|я )сниму (?:флажок|галку) в "([^\"]*)"$/ do |field|
  uncheck(field)
end

When /^(?:|я )установлю (?:флажок|галку) "([^\"]*)" в "([^\"]*)"$/ do |field, parent|
  within parent do |scope|
    scope.check(field)
  end
end

When /^(?:|я )сниму (?:флажок|галку) "([^\"]*)" в "([^\"]*)"$/ do |field, parent|
  within parent do |scope|
    scope.uncheck(field)
  end
end

When /^(?:|я )выберу "([^\"]*)"$/ do |field|
  # debugger
  choose(field)
end

# Adds support for validates_attachment_content_type. Without the mime-type getting
# passed to attach_file() you will get a "Photo file is not one of the allowed file types."
# error message
When /^(?:|я )прикреплю файл "([^\"]*)" в поле "([^\"]*)"$/ do |file_name, field|
  path = Rails.root.to_s + "/public/images/test/#{file_name}"
  attach_file(field, path)
end

Then /^увижу значение "([^\"]*)" в поле "([^\"]*)"$/ do |input_value, input_id|
  page.find(:xpath,"//input[@id='#{input_id}']", :cound => 1).value.should == input_value
end

Then /^(?:|я )увижу "([^\"]*)"$/ do |text|
  page.should have_content(text)
end

Допустим /^я должен увидеть "([^"]*)" в "([^"]*)"$/ do |content, selector|
  within(:css, selector) do
    page.should have_content(content)
  end
end

Допустим /^я не должен увидеть "([^"]*)" в "([^"]*)"$/ do |content, selector|
  within(:css, selector) do
    page.should have_no_content(content)
  end
end

Then /^(?:|я )увижу "([^\"]*)" в "([^\"]*)"$/ do |text, selector|
  within(selector) do
    if defined?(Spec::Rails::Matchers)
      content.should contain(text)
    else
      hc = Webrat::Matchers::HasContent.new(text)
      assert hc.matches?(content), hc.failure_message
    end
  end
end

Then /^(?:|я )увижу \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)
  if defined?(Spec::Rails::Matchers)
    response.should contain(regexp)
  else
    assert_match(regexp, response_body)
  end
end

Then /^(?:|я )увижу \/([^\/]*)\/ в "([^\"]*)"$/ do |regexp, selector|
  within(selector) do |content|
    regexp = Regexp.new(regexp)
    if defined?(Spec::Rails::Matchers)
      content.should contain(regexp)
    else
      assert_match(regexp, content)
    end
  end
end

Then /^(?:|я )не увижу "([^\"]*)"$/ do |text|
  page.should_not have_xpath("//*[contains(.,'#{text}')]")
end

Then /^(?:|я )не увижу "([^\"]*)" в "([^\"]*)"$/ do |text, selector|
  within(selector) do |content|
    if defined?(Spec::Rails::Matchers)
      content.should_not contain(text)
    else
      hc = Webrat::Matchers::HasContent.new(text)
      assert !hc.matches?(content), hc.negative_failure_message
    end
  end
end

Then /^(?:|я )не увижу \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)
  if defined?(Spec::Rails::Matchers)
    response.should_not contain(regexp)
  else
    assert_not_contain(regexp)
  end
end

Then /^(?:|я )не увижу \/([^\/]*)\/ в "([^\"]*)"$/ do |regexp, selector|
  within(selector) do |content|
    regexp = Regexp.new(regexp)
    if defined?(Spec::Rails::Matchers)
      content.should_not contain(regexp)
    else
      assert_no_match(regexp, content)
    end
  end
end

Then /^поле "([^\"]*)" будет содержать "([^\"]*)"$/ do |field, value|
  if defined?(Spec::Rails::Matchers)
    field_labeled(field).value.should =~ /#{value}/
  else
    assert_match(/#{value}/, field_labeled(field).value)
  end
end
Then /^полу "([^\"]*)" не будет содержать "([^\"]*)"$/ do |field, value|
  if defined?(Spec::Rails::Matchers)
    field_labeled(field).value.should_not =~ /#{value}/
  else
    assert_no_match(/#{value}/, field_labeled(field).value)
  end
end

Then /^(?:флажок|галка) "([^\"]*)" будет включен$/ do |label|
  if defined?(Spec::Rails::Matchers)
    field_labeled(label).should be_checked
  else
    assert field_labeled(label).checked?
  end
end

Then /^(?:флажок|галка) "([^\"]*)" будет выключен$/ do |label|
  if defined?(Spec::Rails::Matchers)
    field_labeled(label).should_not be_checked
  else
    assert !field_labeled(label).checked?
  end
end

Then /^(?:|я )должен быть на (.+)$/ do |page_name|
  current_path = URI.parse(current_url).select(:path, :query).compact.join('?')
  if defined?(Spec::Rails::Matchers)
    URI.parse(current_url).path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), URI.parse(current_url).path
  end
end

Then /^(?:|I )should have the following query string:$/ do |expected_pairs|
  actual_params   = CGI.parse(URI.parse(current_url).query)
  expected_params = Hash[expected_pairs.rows_hash.map{|k,v| [k,[v]]}]

  if defined?(Spec::Rails::Matchers)
    actual_params.should == expected_params
  else
    assert_equal expected_params, actual_params
  end
end

Then /^я буду на (.+)$/ do |page_name|
  URI.parse(current_url).path.should == path_to(page_name)
end

Then /^я увижу форму ввода$/ do
  assert have_tag('form').matches?(response_body), 'Искали форму ввода, но не нашли'
end

Then /^я не увижу форму ввода$/ do
  assert !have_tag('form').matches?(response_body), 'Форма не должна быть, а есть сука'
end

Then /^будет (?:нотис|уведомление|сообщение|notice) "(.*)"$/ do |text|
  if respond_to? :selenium
    response.should contain(text)
  else
    assert_equal text, flash[:notice], "flash[:notice] не содержит #{text}"
  end
end

Then /^будет получен rss\-feed$/ do
  assert_equal "application/rss+xml", response.content_type
end

Then /^(?:|я )увижу табличные данные в "([^\"]*)":$/ do |element, _table|
  _table.diff!(tableish("table#{element} tr", 'td,th'))
end

Then /^мне (запр\w+|разр\w+) доступ$/ do |permission|
  if permission =~ /разр/
	  assert @response.success? || @response.redirect?, "действие запрещено"
  else
    assert flash[:error].eql?(I18n.t(:permission_denied)) || flash[:notice].eql?(I18n.t(:require_user)), "Доступ возможен"
  end
end


Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )press "([^"]*)"(?: within "([^"]*)")?$/ do |button, selector|
  with_scope(selector) do
    click_button(button)
  end
end

When /^(?:|I )follow "([^"]*)"(?: within "([^"]*)")?$/ do |link, selector|
  with_scope(selector) do
    click_link(link)
  end
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"(?: within "([^"]*)")?$/ do |field, value, selector|
  with_scope(selector) do
    fill_in(field, :with => value)
  end
end

When /^(?:|I )fill in "([^"]*)" for "([^"]*)"(?: within "([^"]*)")?$/ do |value, field, selector|
  with_scope(selector) do
    fill_in(field, :with => value)
  end
end

# Use this to fill in an entire form with data from a table. Example:
#
#   When I fill in the following:
#     | Account Number | 5002       |
#     | Expiry date    | 2009-11-01 |
#     | Note           | Nice guy   |
#     | Wants Email?   |            |
#
# TODO: Add support for checkbox, select og option
# based on naming conventions.
#
When /^(?:|I )fill in the following(?: within "([^"]*)")?:$/ do |selector, fields|
  with_scope(selector) do
    fields.rows_hash.each do |name, value|
      When %{I fill in "#{name}" with "#{value}"}
    end
  end
end

When /^(?:|I )select "([^"]*)" from "([^"]*)"(?: within "([^"]*)")?$/ do |value, field, selector|
  with_scope(selector) do
    select(value, :from => field)
  end
end

When /^(?:|I )check "([^"]*)"(?: within "([^"]*)")?$/ do |field, selector|
  with_scope(selector) do
    check(field)
  end
end

When /^(?:|I )uncheck "([^"]*)"(?: within "([^"]*)")?$/ do |field, selector|
  with_scope(selector) do
    uncheck(field)
  end
end

When /^(?:|I )choose "([^"]*)"(?: within "([^"]*)")?$/ do |field, selector|
  with_scope(selector) do
    choose(field)
  end
end

When /^(?:|I )attach the file "([^"]*)" to "([^"]*)"(?: within "([^"]*)")?$/ do |path, field, selector|
  with_scope(selector) do
    attach_file(field, path)
  end
end

# Вход в сервис
Given /^(?:|I )am logged in as (.*) with pass (.*)$/ do |login,pass|
  Given "I am on the home page"
  Given "I go to the englishroot page"
  Given %q(I follow "login")
  fill_in('user_session[username]',:with => login)
  fill_in('user_session[password]',:with => pass)
  Given %q(I press "login")
  Given %q(I should be on the home page)
  Given %q(I should see "Successfully created user session.")
end

# Заполняем форму для приглашения
When /^(?:|I )fill invite form as (.*) with role (.*)$/ do |email,role|
      fill_in('user_email',:with => email)
      select(role, :from => "user[role_id]")
      When %q(I press "Запрос приглашения")
end

Then /^(?:|I )should see JSON:$/ do |expected_json|
  require 'json'
  expected = JSON.pretty_generate(JSON.parse(expected_json))
  actual   = JSON.pretty_generate(JSON.parse(response.body))
  expected.should == actual
end

Then /^(?:|I )should see "([^"]*)"(?: within "([^"]*)")?$/ do |text, selector|
  with_scope(selector) do
    if page.respond_to? :should
      page.should have_content(text)
    else
      assert page.has_content?(text)
    end
  end
end

Then /^(?:|I )should see \/([^\/]*)\/(?: within "([^"]*)")?$/ do |regexp, selector|
  regexp = Regexp.new(regexp)
  with_scope(selector) do
    if page.respond_to? :should
      page.should have_xpath('//*', :text => regexp)
    else
      assert page.has_xpath?('//*', :text => regexp)
    end
  end
end

Then /^(?:|I )should not see "([^"]*)"(?: within "([^"]*)")?$/ do |text, selector|
  with_scope(selector) do
    if page.respond_to? :should
      page.should have_no_content(text)
    else
      assert page.has_no_content?(text)
    end
  end
end

Then /^(?:|I )should not see \/([^\/]*)\/(?: within "([^"]*)")?$/ do |regexp, selector|
  regexp = Regexp.new(regexp)
  with_scope(selector) do
    if page.respond_to? :should
      page.should have_no_xpath('//*', :text => regexp)
    else
      assert page.has_no_xpath?('//*', :text => regexp)
    end
  end
end

Then /^the "([^"]*)" field(?: within "([^"]*)")? should contain "([^"]*)"$/ do |field, selector, value|
  with_scope(selector) do
    field = find_field(field)
    field_value = (field.tag_name == 'textarea') ? field.text : field.value
    if field_value.respond_to? :should
      field_value.should =~ /#{value}/
    else
      assert_match(/#{value}/, field_value)
    end
  end
end

Then /^the "([^"]*)" field(?: within "([^"]*)")? should not contain "([^"]*)"$/ do |field, selector, value|
  with_scope(selector) do
    field = find_field(field)
    field_value = (field.tag_name == 'textarea') ? field.text : field.value
    if field_value.respond_to? :should_not
      field_value.should_not =~ /#{value}/
    else
      assert_no_match(/#{value}/, field_value)
    end
  end
end

Then /^the "([^"]*)" checkbox(?: within "([^"]*)")? should be checked$/ do |label, selector|
  with_scope(selector) do
    field_checked = find_field(label)['checked']
    if field_checked.respond_to? :should
      field_checked.should be_true
    else
      assert field_checked
    end
  end
end

Then /^the "([^"]*)" checkbox(?: within "([^"]*)")? should not be checked$/ do |label, selector|
  with_scope(selector) do
    field_checked = find_field(label)['checked']
    if field_checked.respond_to? :should
      field_checked.should be_false
    else
      assert !field_checked
    end
  end
end

Then /^(?:|I )should be on (.+)$/ do |page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end

Then /^(?:|I )should have the following query string:$/ do |expected_pairs|
  query = URI.parse(current_url).query
  actual_params = query ? CGI.parse(query) : {}
  expected_params = {}
  expected_pairs.rows_hash.each_pair{|k,v| expected_params[k] = v.split(',')}

  if actual_params.respond_to? :should
    actual_params.should == expected_params
  else
    assert_equal expected_params, actual_params
  end
end

Допустим /^покажи\-ка страницу$/ do
  save_and_open_page
end