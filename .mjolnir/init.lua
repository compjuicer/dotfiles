local hotkey = require 'mjolnir.hotkey'
local screen = require 'mjolnir.screen'
local window = require 'mjolnir.window'

local xs = 3
local ys = 3

local layout = {

  { key = 'pad7', location = { x = 0, y = 0} },
  { key = 'pad8', location = { x = 1, y = 0} },
  { key = 'pad9', location = { x = 2, y = 0} },

  { key = 'pad4', location = { x = 0, y = 1} },
  { key = 'pad5', location = { x = 1, y = 1} },
  { key = 'pad6', location = { x = 2, y = 1} },

  { key = 'pad1', location = { x = 0, y = 2} },
  { key = 'pad2', location = { x = 1, y = 2} },
  { key = 'pad3', location = { x = 2, y = 2} }

}

function position(location)

  return function()

    local window = window.focusedwindow()
    local windowFrame = window:frame()
    local screenFrame = window:screen():frame()

    local xLocation = (location.x / xs) * screenFrame.w
    local yLocation = (location.y / ys) * screenFrame.h
    local width = screenFrame.w / xs
    local height = screenFrame.h / ys

    windowFrame.x = xLocation
    windowFrame.y = yLocation
    windowFrame.w = width
    windowFrame.h = height

    window:setframe(windowFrame)
  end
end

for i, mapping in pairs(layout) do
  hotkey.bind({"alt"}, mapping.key, position(mapping.location))
end

