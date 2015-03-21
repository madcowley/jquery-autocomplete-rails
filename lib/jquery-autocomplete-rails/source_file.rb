require 'thor'
require 'json'

class SourceFile < Thor
  include Thor::Actions

  desc 'fetch source files', 'fetch source files from GitHub'
  def fetch remote, branch
    self.destination_root = 'vendor/assets'
    get "#{remote}/raw/#{branch}/dist/jquery.autocomplete.js", 'javascripts/jquery.autocomplete.js'
    get "#{remote}/raw/#{branch}/dist/jquery.autocomplete.min.js", 'javascripts/jquery.autocomplete.min.js'
    get "#{remote}/raw/#{branch}/package.json", 'package.json'
    bump_version
  end


  desc 'clean up useless files', 'clean up useless files'
  def cleanup
    self.destination_root = 'vendor/assets'
    remove_file 'package.json'
  end

  protected

  def bump_version
    inside destination_root do
      package_json = JSON.load(File.open('package.json'))
      version = package_json['version']
      gsub_file '../../lib/jquery-autocomplete-rails/version.rb', /JQUERY_AUTOCOMPLETE_VERSION\s=\s'(\d|\.)+'$/ do |match|
        %Q{JQUERY_AUTOCOMPLETE_VERSION = '#{version}'}
      end
    end
  end
end
