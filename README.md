![Chaplin](http://s3.amazonaws.com/imgly_production/3401027/original.png)

# Boilerplate Application for Chaplin.js

This is a boilerplate application built with [Chaplin.js](http://chaplinjs.org), an application structure on top of Backbone.js.

### Not a CoffeeScript user? There’s also a plain JavaScript boilerplate!

If you’re not using CoffeeScript in your application, you might use the [plain, readable, JavaScript version of this boilerplate](https://github.com/chaplinjs/chaplin-boilerplate-plain).

## Running the Example

The original sources are written in CoffeeScript (`coffee/` directory), but this repository
already comes with the compiled JavaScripts (`js/` directory). To recompile the CoffeeScripts,
you might run the command line [CoffeeScript compiler](http://coffeescript.org/) in the
repository’s root directory:

```
coffee --bare --output js/ coffee/
```

This repository also contains a recent build of the Chaplin library in `bower_components/chaplin/chaplin.js`.

To run the example, copy the contents of this folder to the document root of your
favorite webserver. If you’re running a local webserver like Apache or Nginx, the URL is
`http://localhost/` or similar.

It is necessary that you run the example in a `http://` context. Just opening the
`index.html` via `file://` won’t work.

If you don’t have a webserver installed, [pushserve](https://github.com/paulmillr/pushserve)
is a suggested HTTP server with simple syntax and HTML5 pushState support.
Install it with nodejs package manager: `npm install -g pushserve` and then launch `pushserve`.

If the boilerplate is running correctly, you will see a “Hello World!” message.

If your JavaScript app is located in a subfolder on your domain, for example at
`http://localhost/my-chaplin-app/`, you need to configure the Chaplin.Router
accordingly. Please open the `index.html` file and edit
[application
initialization](https://github.com/chaplinjs/chaplin-boilerplate/blob/master/index.html#L43).
Pass an appropriate `root` option, for example:

```html
require(['application', 'routes'], function(Application, routes) {
  new Application(
    {routes: routes, controllerSuffix: '-controller', root: '/my-chaplin-app/'}
  );
});
```

Make sure to compile the CoffeeScripts to JavaScript before testing in the browser.
Use the CoffeeScript compiler to watch file changes in order to recompile the changed
`.coffee` source files automatically:

```
coffee --watch --bare --output js/ coffee/
```

## Architectural Documentation

### Directory Structure

This example has a standard Chaplin MVC directory structure:

- `coffee/models`
- `coffee/views`
- `coffee/controllers`
- `coffee/libs`

All vendor libraries like jQuery and Backbone are located `bower_components`.

### Application Startup

There are two special files which are responsible for the application bootstrap:

- `coffee/hello_world_application.coffee`
- `coffee/routes.coffee`

`hello_world_application.coffee` is the application root class which inherits from `Chaplin.Application`. It starts up all Chaplin core modules and starts the routing. It is loaded and instantiated in `index.html`.

`routes.coffee` contains all application routes which map URLs to controller actions.

### Templating

Since Chaplin is template-engine agnostic, you have to decide which templating solution you want to use and how you want to load the templates. This example uses [Handlebars](http://handlebarsjs.com/) templates and loads them on-demand using the [RequireJS Text](http://requirejs.org/docs/api.html#text) plugin.

Chaplin expects that views implement the `getTemplateFunction` method which needs to return the actual templating function. Since all views in this example use the same templating solution, `getTemplateFunction` is provided once by two base classes all other views inherit from:

- `coffee/views/base/view.coffee`
- `coffee/views/base/collection_view.coffee`

The actual `.hbs` template files are located in the `js/templates` directory.

### Application-specific Extensions

To ease the development, this repository also provides application-specific base classes for models, collections and controllers. They inherit from the Chaplin base classes:

- `coffee/models/base/model.coffee`
- `coffee/models/base/collection.coffee`
- `coffee/controllers/base/controller.coffee`

Furthermore, `coffee/lib/support.coffee` and `coffee/lib/utils.coffee` demonstrate how to extend the feature testing and utility files of Chaplin.

Last but not least, this example uses a specific `Layout` class which can be found in `coffee/views/layout.coffee`.

### Dependency management

Dependency management is handled by [Bower](http://bower.io).

To install deps, execute `bower install`.

## [The Cast](https://github.com/chaplinjs/chaplin/blob/master/AUTHORS.md#the-cast)

## [The Producers](https://github.com/chaplinjs/chaplin/blob/master/AUTHORS.md#the-producers)
