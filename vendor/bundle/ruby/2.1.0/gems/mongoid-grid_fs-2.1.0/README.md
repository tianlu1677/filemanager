NAME
----
  mongoid-grid_fs

INSTALL
-------
  gem install mongoid-grid_fs

SYNOPSIS
--------
```ruby
  require 'mongoid-grid_fs'

  grid_fs = Mongoid::GridFs

  g = grid_fs.put(readable)

  id = g.id

  grid_fs.get(id)

  grid_fs.delete(id)
```

DESCRIPTION
-----------
mongoid_grid_fs is a pure mongoid 3  / moped implementation of the mongodb
grid_fs specification

ref: http://docs.mongodb.org/manual/reference/gridfs/

it has the following features:

- implementation is on top of mongoid for portability.  moped (the driver) is
  barely used, so the library should be quite durable except in the face of
  massive changes to mongoid itself.

- simple, REST-like api

- support for custom namespaces (fs.files vs. image.files, as per the spec)

- pathnames and io-like objects can be written to the grid

- auto-unique pathnames are generated (by default) to avoid collisions using #put

    'path/info/a.rb' -> '$object_id/a.rb'

- [] and []= methods which allow the grid to be used like a giant file
  hash in the sky

- supprt for data_uris, like a html5 boss
  ````erb

    <%= image_tag :src => file.data_uri %>

  ````

CONTRIBUTING
------------

```
$ bundle
$ rake test
```

LICENSE
-------

This is licensed under the Ruby License: http://www.ruby-lang.org/en/about/license.txt
