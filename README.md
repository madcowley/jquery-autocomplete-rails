# Jquery-autocomplete for rails asset pipeline

[JQueryAutocomplete](https://github.com/devbridge/jQuery-Autocomplete) is a jquery plugin for autocompletion.

The `jquery-autocomplete-rails` gem integrates the `Chosen` with the Rails asset pipeline.

## Usage

### Install jquery-autocomplete-rails gem


```rb
gem 'jquery-autocomplete-rails'
```

Then run `bundle install`

### Include javascript assets

Add to your `app/assets/javascripts/application.js` 

```coffee
//= require jquery.autocomplete
```



The infrastructure for this gem is heavily borrowed from <https://github.com/tsechingho/chosen-rails>.