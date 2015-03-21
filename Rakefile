#!/usr/bin/env rake
require 'bundler/gem_tasks'
require File.expand_path('../lib/jquery-autocomplete-rails/source_file', __FILE__)

desc "Update with devgridge's jquery-autocomplete libary"
task 'update-jquery-autocomplete', 'repository_url', 'branch' do |task, args|
  remote = args['repository_url'] || 'https://github.com/devbridge/jQuery-Autocomplete'
  branch = args['branch'] || 'master'
  files = SourceFile.new
  files.fetch remote, branch
  files.cleanup
end
