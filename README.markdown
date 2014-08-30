patrickbyrne.net
================

Source code for [patrickbyrne.net][pb].

Getting Started
---------------

The site is built with [Middleman][mm] and a Ruby toolchain.

1. `bundle` to install Ruby gem dependencies
2. There is no step 2.

Running Locally
---------------

* To run as a dynamic app for development, use `middleman`and view in the browser at http://localhost:4567.
* To build the static site, `rake build` and view the output in the `build/` directory.

Deploying
---------

* To deploy to staging: `rake stage` and view the changes at http://beta.patrickbyrne.net/.
* To deploy to production: `rake deploy` and view the changes at http://patrickbyrne.net/.

[pb]:http://patrickbyrne.net/
[mm]:http://middlemanapp.com/
