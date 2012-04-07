require 'rake/rdoctask'
require 'spec/rake/spectask'

task :ant do 
  ret = system('ant')
  if !ret
    raise "Compilation error"
  end
end

task :default => [:spec]
task :test => [:spec]

desc "Flog all Ruby files in lib"
task :flog do 
  system("find lib -name '*.rb' | xargs flog")
end

desc "Run all specs"
Spec::Rake::SpecTask.new(:spec) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.spec_files = FileList['test/**/*_spec.rb']
  t.verbose = true
  t.spec_opts = %w(--colour)
end

task :spec => [:ant]

desc 'Generate RDoc'
Rake::RDocTask.new do |task|
  task.main = 'README'
  task.title = 'ribs'
  task.rdoc_dir = 'doc'
  task.options << "--line-numbers" << "--inline-source"
  task.rdoc_files.include('README', 'lib/**/*.rb')
end

