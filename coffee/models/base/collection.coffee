define [
  'chaplin'
  'models/base/model'
], (Chaplin, Model) ->

  class Collection extends Chaplin.Collection
    # Mixin a synchronization state machine.
    # _(@prototype).extend Chaplin.SyncMachine

    # Use the project base model per default, not Chaplin.Model.
    model: Model

    # Place your application-specific collection features here.
