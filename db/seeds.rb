# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Content.create(:name => "rules", :subject => "", :body => "Можно всё, что позволяет законодательство РФ")
User.create(:email => "devandart@ya.ru", :password => "gs6cvuq", :confirmation_password => "gs6cvuq").has_role!("admin")
