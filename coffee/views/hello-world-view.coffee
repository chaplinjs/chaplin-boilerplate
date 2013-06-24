define [
  'views/base/view'
  'text!templates/hello-world.hbs'
], (View, template) ->
  'use strict'

  class HelloWorldView extends View
    # Automatically render after initialize.
    autoRender: true
    className: 'hello-world'

    # Save the template string in a prototype property.
    # This is overwritten with the compiled template function.
    # In the end you might want to used precompiled templates.
    template: template
    template = null
