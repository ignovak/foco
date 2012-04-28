# Sona framework 

A [less][less]-based CSS Framework for easy and advanced developing HTML5 layouts. It allows you to mix and match any of the following CSS frameworks:

 * `sona_gs` - Sona grid system. Allows you to create grid based layouts 
 * `rhythm` - toolbox for perfect vertycally alligned texts and boxes
 * `type` - proper web typography module
 * `reset` - collection of CSS resets: `.normalize()`, `.reset_html5doctor()`, `.reset_mayer()`, `.reset_yui()`
 * `utils` - widely used helper functions like clearfix
 * `lessframework` - adaptation of [Less Framework][lessframework] to create responcive layouts
 * in future some popular CSS frameworks
 


## Sona framework Provides

0. Great power of [less][less]. So you write Less instead of CSS use variables and
   mixins in your code. Dont need to use aditional classes in your html, just appy
   mixind according page semantic selectors.
1. Easy and flexible way to create grid based layout.
2. Great local layout development enviroment. (Autoreloading styles, local webserver)
3. Skeleton for creation responsible design
4. Integration with [PrefixFree][prefixfree] 


## Quick Start

1. Grab a copy of this repo:
  * `git clone https://github.com/pokutnik/sona_framework`
  * or download [ZIP archive][zip]
  * or `wget -qO- https://github.com/pokutnik/sona_framework/tarball/master | tar xzv`
2. Include sona less framework in your html

        <!-- link jQuery -->
        <script src="js/libs/jquery-1.6.4.js"></script>
        <!-- link sona framework's js files -->
        <script src="js/sona/css.js"></script>
        <script src="js/libs/less-1.1.4.js"></script>
        <!-- enable auto styles refresh -->
        <script src="js/sona/less-watch.js"></script>
        <!-- include main dev.less file -->
        <script>
            css.load('dev.less', 'stylesheet/less', 'dev_css');
        </script>
    
    
3. Open your html in browser. 
4. Code layout in `dev.less` file. Changes will automaticly reloded so you will see them directly in browser without reloading page.


## More Information

## Authors 
Sona Framework is developed by Pokutnik Alexandr and Jevgenii Likhovidov at [Sona studio][sona].

## License
Copyright (c) 2010-2011 [Sona studio][sona]

All Rights Reserved.

Released under MIT License.


[repo]: https://github.com/pokutnik/sona_framework "Sona framework source repo"
[sona]: http://sona-studio.com/ "Sona studio"
[less]: http://lesscss.org/ "Less CSS"
[zip]: http://github.com/pokutnik/sona_framework/zipball/master "Sona framework ZIP archive"
[lessframework]: http://lessframework.com/ "Less framework"
[prefixfree]: http://leaverou.github.com/prefixfree/ "PrefixFree"

