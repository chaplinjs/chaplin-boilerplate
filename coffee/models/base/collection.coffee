define [
  'chaplin'
], (Chaplin) ->

  class Collection extends Chaplin.Collection
    # Mixin a synchronization state machine
    # _(@prototype).extend SyncMachine

    # Place your application-specific collection features here
