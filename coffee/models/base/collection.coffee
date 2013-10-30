define [
  'chaplin'
  'models/base/model'
], (Chaplin, Model) ->

  class Collection extends Chaplin.Collection
    # Mixin a synchronization state machine.
    # _(@prototype).extend Chaplin.SyncMachine
    # initialize: ->
    #   super
    #   @on 'request', @beginSync
    #   @on 'sync', @finishSync
    #   @on 'error', @unsync

    # Use the project base model per default, not Chaplin.Model.
    model: Model

    # Place your application-specific collection features here.
