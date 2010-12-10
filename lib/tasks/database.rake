require 'active_record/fixtures'

namespace :db do
  desc "Loading db/sample for product_placement"
  task :sample => :environment do
    ActiveRecord::Base.establish_connection(RAILS_ENV.to_sym)
    non_truncable_tables = %w(sms_gateways schema_migrations gateways)
    ActiveRecord::Base.connection.tables.reject{|table| non_truncable_tables.index(table)}.each do |table|
      ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
    end

    Dir.glob(File.join(RAILS_ROOT, "db", 'sample', '*.{yml,csv}')).each do |fixture_file|
      puts "load: #{fixture_file}"
      Fixtures.create_fixtures("#{RAILS_ROOT}/db/sample",
                               File.basename(fixture_file, '.*'))
      puts "loaded: #{fixture_file}"
    end
    Dir.glob(File.join(RAILS_ROOT, "db", 'sample', '*.rb')).each do |ruby_file|
      puts "load ruby: #{ruby_file}"
      load ruby_file
      puts "loaded ruby: #{ruby_file}"
    end
    puts "set sequences"
    ActiveRecord::Base.connection.tables.each do |table|
      ActiveRecord::Base.connection.execute("SELECT setval('#{table}_id_seq', 1000000);") rescue nil
    end
    puts "Sample data has been loaded"
  end

end
