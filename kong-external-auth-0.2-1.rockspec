package = "kong-external-auth"
version = "0.2-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/abeselomg/kong-custom",
  tag = "master"
}
description = {
  summary = "Kong plugin to authenticate requests using http services.",
  license = "MIT",
  homepage = "https://github.com/abeselomg/kong-custom",
  detailed = [[
      Kong plugin to authenticate requests using http services.
  ]]
}
dependencies = {
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-external-auth.handler"] = "src/handler.lua",
    ["kong.plugins.kong-external-auth.schema"] = "src/schema.lua"
  }
}