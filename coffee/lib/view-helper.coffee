define [
  'handlebars'
  'chaplin'
  'lib/utils'
], (Handlebars, Chaplin, utils) ->
  'use strict'

  # Application-specific Handlebars helpers
  # ---------------------------------------

  # Get Chaplin-declared named routes. {{#url "like" "105"}}{{/url}}
  Handlebars.registerHelper 'url', (routeName, params..., options) ->
    utils.reverse routeName, params

  null
