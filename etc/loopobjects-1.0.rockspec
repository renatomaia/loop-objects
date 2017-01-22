package = "loopobjects"
version = "1.0-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   summary = "LOOP classes of object utilities.",
   detailed = "Classes that implement usual features offered by most object models.",
   homepage = "https://git.tecgraf.puc-rio.br/maia/lua-loopobjects",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ['loop.object.Dummy'] = "lua/loop/object/Dummy.lua",
      ['loop.object.Exception'] = "lua/loop/object/Exception.lua",
      ['loop.object.Publisher'] = "lua/loop/object/Publisher.lua",
      ['loop.object.Wrapper'] = "lua/loop/object/Wrapper.lua"
   }
}
