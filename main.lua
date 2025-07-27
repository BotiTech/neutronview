local gui = require("GUI")
local system = require("System")

local workspace,window,menu = system.addWindow(gui.filledWindow(1,1,82,28,0x262626))

window:addChild(gui.label(window.width/2-20,1,40,3,0xFFFF00,"NeutronView v1.0")):setAlignment(gui.ALIGNMENT_HORIZONTAL_CENTER, gui.ALIGNMENT_VERTICAL_CENTER)
-------

local rods = gui.container(2,3,60,20,0x000000)
rods:addChild(gui.label(1,1,58,1,0xFFFFFF,"ec2e625b"))
rods:addChild(gui.label(1,2,58,1,0xFFFFFF,"e3c6b4a7"))
rods:addChild(gui.label(1,3,58,1,0xFFFFFF,"e4d8c9b2"))
rods:addChild(gui.label(1,4,58,1,0xFFFFFF,"e5f9d2c3"))

window:addChild(rods)

workspace:draw()
workspace:start()