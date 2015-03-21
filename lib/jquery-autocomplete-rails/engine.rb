module JqueryAutocomplete
  module Rails
    class Engine < ::Rails::Engine
      rake_tasks do
        load 'jquery-autocomplete-rails/tasks.rake'
      end
    end
  end
end
