define [
  'underscore'
  'chaplin'
], (_, Chaplin) ->

  # Application-specific utilities
  # ------------------------------

  # Delegate to Chaplin’s utils module
  utils = Chaplin.utils.beget Chaplin.utils

  # Add additional application-specific properties and methods

  # _(utils).extend
  #   someProperty: 'foo'
  #   someMethod: ->

  utils
