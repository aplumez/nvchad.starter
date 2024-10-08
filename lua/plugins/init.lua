local result = {}

local global = require "plugins.global"
local html_css = require "plugins.html_css"
local javascript = require "plugins.javascript"
local clojure = require "plugins.clojure"

for _, config_file in ipairs { global, html_css, javascript, clojure } do
  for _, plugin_config in ipairs(config_file) do
    result[#result + 1] = plugin_config
  end
end

return result
