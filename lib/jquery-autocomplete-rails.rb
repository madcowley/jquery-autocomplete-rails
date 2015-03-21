require 'jquery-autocomplete-rails/version'

module JqueryAutocomplete
  module Rails
  end
end

case ::Rails.version.to_s
when /^4/
  require 'jquery-autocomplete-rails/engine'
when /^3\.[12]/
  require 'jquery-autocomplete-rails/engine3'
when /^3\.[0]/
  require 'jquery-autocomplete-rails/railtie'
end

