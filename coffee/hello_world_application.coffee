define [
  'chaplin'
  'views/layout'
  'routes'
], (Chaplin, Layout, SessionController, NavigationController, SidebarController, routes) ->
  'use strict'

  # The application object
  # Choose a meaningful name for your application
  class HelloWorldApplication extends Chaplin.Application

    # Set your application name here so the document title is set to
    # “Controller title – Site title” (see Layout#adjustTitle)
    title: 'Chaplin Example Application'

    initialize: ->
      super
      #console.debug 'HelloWorldApplication#initialize'

      # Initialize core components
      @initDispatcher()
      @initLayout()
      @initMediator()

      # Application-specific scaffold
      @initControllers()

      # Register all routes and start routing
      @initRouter routes

      # Freeze the application instance to prevent further changes
      Object.freeze? this

    # Override standard layout initializer
    # ------------------------------------
    initLayout: ->
      @layout = new Layout {@title}

    # Instantiate common controllers
    # ------------------------------
    initControllers: ->
      # These controllers are active during the whole application runtime.
      # e.g. new NavigationController()

    # Create additional mediator properties
    # -------------------------------------
    initMediator: ->
      # Create a user property
      Chaplin.mediator.user = null
      # Add additional application-specific properties and methods
      # Seal the mediator
      Chaplin.mediator.seal()
