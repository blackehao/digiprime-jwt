package = "digiprime-jwt"

local pluginName = 'digiprime-jwt'

supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/iksyz/digiprime-jwt",
  tag = "0.0.16"
}

version = source.tag .. "-1"

description = {
  summary = "shuinfo digiprime jwt is a auth plugin for Kong",
  homepage = "https://github.com/iksyz/digiprime-jwt.git",
  license = "Apache-2.0"
}

dependencies = {
  "lodash == 0.02-0",
  "lua-resty-radixtree == 2.8.1-0"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".asn_sequence"] = "src/asn_sequence.lua",
    ["kong.plugins."..pluginName..".handler"] = "src/handler.lua",
    ["kong.plugins."..pluginName..".jwt_parser"] = "src/jwt_parser.lua",
    ["kong.plugins."..pluginName..".schema"] = "src/schema.lua",
  }
}