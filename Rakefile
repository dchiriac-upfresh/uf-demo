require 'English'
require 'foodcritic' 


desc "Run all tests"
task :test => [:lint, :spec]
task :default => :test

desc "Run Foodcritic"
FoodCritic::Rake::LintTask.new(:lint) do |t|
  t.options = { :fail_tags => ["correctness"] }
end

task :spec do
  puts "test"
end

desc 'Run knife cookbook syntax test'
task :cookbook_test do
  path = File.expand_path('../..', __FILE__)
  #cb = File.basename(File.expand_path('..', __FILE__))
  cb = "11main-common"
  Kernel.system "knife cookbook test -c test/knife.rb -o #{path} #{cb}"
  $CHILD_STATUS == 0 || fail('Cookbook syntax check failed!')
end

begin
  require 'kitchen/rake_tasks'
  Kitchen::RakeTasks.new
rescue LoadError
  puts ">>>>> Kitchen gem not loaded, omitting tasks" unless ENV['CI']
end
