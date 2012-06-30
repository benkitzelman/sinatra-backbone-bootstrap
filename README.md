sinatra-backbone-bootstrap
==========================
All the goodness of Backbone, Sinatra, Coffeescript with Jasmine and a lightweight responsive css framework (Skeleton).

_GEMS_
 - Sinatra
 - Sinatra-assetpack
 - Coffee-Script
 - SASS
 - Jasmine
 - thin

_JS LIBS_
 - Modernizr 2.5.3
 - BackboneJS 0.9.2
 - UnderscoreJS 1.3.3
 - JQuery 1.7.2

_CSS FRAMEWORK_
 - Skeleton 1.1

GETTING STARTED
-------------------
<pre>
bundle
thin start
</pre>

JS TESTING WITH JASMINE
------------------------

rake jasmine - point the browser to http://localhost:8888/

sinonjs has been included for mocking / stubbing / spying as well as jasmine-jquery.

Sinatra Assetpack handles coffeescript compilation on the fly, and in production, takes care of minification / uglification of js and coffeescript into 2 discrete files - vendor.js and application.js

