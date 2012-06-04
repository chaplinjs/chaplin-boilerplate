define [
  'chaplin'
], (Chaplin) ->
  'use strict'

  class Layout extends Chaplin.Layout

    initialize: ->
      super
      #@subscribeEvent 'startupController', @doSomething
