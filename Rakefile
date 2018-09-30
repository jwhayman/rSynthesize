require 'bundler/gem_tasks'
require 'rdoc/task'

RDoc::Task.new :rdoc_dev do |rdoc|
	rdoc.main = 'README.md'
	rdoc.title = 'Synthesize'
  rdoc.rdoc_files.include('README.md', 'lib/**/*.rb')
  rdoc.options += ['--line-numbers', '--inline-source', '--title']
end
