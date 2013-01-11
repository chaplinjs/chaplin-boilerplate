define [
  'chaplin'
  'models/hello_world'
  'views/hello_world_view'
], (Chaplin, HelloWorld, HelloWorldView) ->
  'use strict'

  class HelloWorldController extends Chaplin.Controller
    show: (params) ->
      #console.debug 'HelloWorldController#show'
      @model = new HelloWorld()
      @view = new HelloWorldView model: @model
