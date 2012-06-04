define [
  'chaplin',
  'models/base/model'
], (Chaplin, Model) ->
  'use strict'

  class HelloWorld extends Model

    initialize: (attributes, options) ->
      super
      #console.debug 'HelloWorld#initialize'
