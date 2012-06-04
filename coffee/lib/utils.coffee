define [
  'underscore'
  'jquery'
  'chaplin'
], (_, jquery, Chaplin) ->

  # Application-specific utilities
  # ------------------------------

  # Shortcut to the mediator
  mediator = Chaplin.mediator

  # Delegate to Chaplin’s utils module
  utils = Chaplin.utils.beget Chaplin.utils

  # Add additional application-specific properties and methods

  # _(utils).extend
  #   someProperty: 'foo'
  #   someMethod: ->

  utils
