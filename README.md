NuVăSupărați.info-Theme
=======================

This is the [NuVăSupărați.info](http://nuvasuparati.info) theme for [Alaveteli](http://www.alaveteli.org). It is based on the [tuderechoasaber.es](http://tuderechoasaber.es/) [theme](https://github.com/dcabo/tuderechoasaber-theme)

The intention is to support simple overlaying of templates and resources without the need to touch the core Alaveteli software.

The source code of the theme can be found [here](https://gitorious.org/nuvasuparati-info/nuvasuparati-info-theme) and the main project is [here](https://gitorious.org/nuvasuparati-info).

This theme contains:

 * CSS-based customisations in lib/views/general/custom_css.rhtml

 * Custom versions of non-functional pages (like "about us", at lib/views/help/about.rhtml -- and/or localised versions at lib/views/help/about.es.rhtml)

Look in the lib/ folder of the plugin to see how the overrides happen.

To install:
-----------
 
  ./script/plugin install git://gitorious.org/nuvasuparati-info/nuvasuparati-info-theme.git

A symbolic link will be created automatically in the `public/` folder
of the main app, pointing to the `public/` folder of the theme, in 
order to serve static assets.

To uninstall:
-------------

  ./script/plugin git://gitorious.org/nuvasuparati-info/nuvasuparati-info-theme.git

The symbolic link created during the installation will be removed 
automatically.
