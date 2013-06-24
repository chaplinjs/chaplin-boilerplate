define [
  'controllers/base/controller'
  'models/hello-world'
  'views/hello-world-view'
], (Controller, HelloWorld, HelloWorldView) ->
  'use strict'

  class HelloController extends Controller
    show: (params) ->
      @model = new HelloWorld()
      @view = new HelloWorldView
        model: @model
        region: 'main'
