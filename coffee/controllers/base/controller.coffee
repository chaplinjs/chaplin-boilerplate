define ['chaplin', 'views/site-view'], (Chaplin, SiteView) ->
  'use strict'

  class Controller extends Chaplin.Controller
    # Place your application-specific controller features here
    beforeAction: ->
      @compose 'site', SiteView
