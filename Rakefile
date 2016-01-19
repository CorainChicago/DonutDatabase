# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

rake db:seed RAILS_ENV=test --trace

desc "Setup test database - drops, loads schema, migrates and seeds the test db"
task :test_db_setup => [:pre_reqs] do
  Rails.env = ENV['RAILS_ENV'] = 'test'
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  result = capture_stdout { Rake::Task['db:schema:load'].invoke }
  File.open(File.join(ENV['CC_BUILD_ARTIFACTS'] || 'log', 'schema-load.log'), 'w') { |f| f.write(result) }
  Rake::Task['db:seed:load'].invoke
  ActiveRecord::Base.establish_connection
  Rake::Task['db:migrate'].invoke
end

# rake assets:precompile RAILS_ENV=production
