# encoding: utf-8
$:.unshift File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name = 'ribs'
  s.summary = 'Ribs wraps Hibernate, to provide a good ORM for JRuby'
  s.version = '0.0.3'
  s.author = 'Ola Bini'
  s.description = s.summary
  s.homepage = 'http://ribs.rubyforge.org'
  s.rubyforge_project = 'ribs'

  s.has_rdoc = true
  s.extra_rdoc_files = %w(README)
  s.rdoc_options << '--title' << 'ribs' << '--main' << 'README' << '--line-numbers'

  s.email = 'ola.bini@gmail.com'

  s.files         = `git ls-files`.split($\) + %w(lib/ribs.jar)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.platform          = 'jruby'
  s.require_path      = 'lib'
  s.rubyforge_project = '[none]'

  s.add_development_dependency 'rspec', '~> 1.3'
  s.add_development_dependency 'flog'
  s.add_development_dependency 'rake'
end