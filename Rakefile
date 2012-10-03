require 'spec/rake/spectask'
require "bundler/gem_tasks"

task :default => [:spec]
task :test => [:spec]

desc "Flog all Ruby files in lib"
task :flog do 
  system("find lib -name '*.rb' | xargs flog")
end
