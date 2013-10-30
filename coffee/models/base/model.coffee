define [
  'chaplin'
], (Chaplin) ->

  class Model extends Chaplin.Model
    # Mixin a synchronization state machine.
    # _(@prototype).extend Chaplin.SyncMachine
    # initialize: ->
    #   super
    #   @on 'request', @beginSync
    #   @on 'sync', @finishSync
    #   @on 'error', @unsync

    # Place your application-specific model features here.
