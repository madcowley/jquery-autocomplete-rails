require 'fileutils'

desc 'Create nondigest versions of all digest assets'
task 'assets:precompile' do
  fingerprint = /\-[0-9a-f]{32}\./
  Dir['public/assets/jquery-autocomplete-*'].each do |file|
    next unless file =~ fingerprint
    nondigest = file.sub fingerprint, '.'
    FileUtils.cp file, nondigest, verbose: true
  end
end
