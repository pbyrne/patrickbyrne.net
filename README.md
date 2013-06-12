PatrickByrne.net
================

This is the source code behind [patrickbyrne.net][pb]. There's not much more to say.

[pb]:http://patrickbyrne.net/

Getting Started
---------------

1. `bundle install`
2. Hmm. There is no Step 2.

Common Tasks
------------

### `rake deploy`

Build the site and push to my server. Also tags the current "release".

### `rake run`

Runs an interactive server at [localhost:4000][localhost], and rebuilds the
site when you change things.

### `rake new[TITLE]`

Create a new post with the given TITLE using the checked-in template.

### `rake build`

Build the site locally. Useful to debug, but `rake run` is better.

### `rake checkup`

Runs jekyll's command to look for deprecations and alert about them.

[localhost]:http://localhost:4000/
