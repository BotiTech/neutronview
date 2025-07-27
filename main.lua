local gui = require("GUI")
local system = require("System")

local workspace,window,menu = system.addWindow(gui.filledWindow(1,1,82,28,0x262626))

window:addChild(gui.label(window.width/2-20,1,40,3,0xFFFF00,"NeutronView v1.0")):setAlignment(gui.ALIGNMENT_HORIZONTAL_CENTER, gui.ALIGNMENT_VERTICAL_CENTER)
-------

local rod_addrs = {"ec2e625b", "e3c6b4a7", "e4d8c9b2", "e5f9d2c3"}

local rods = gui.list(2,4,20,#rod_addrs*4,4,0,0x000000,0xFFFFFF,0x6D6D6D,0xFFFF00,0x000000,0xFFFF00,false)
rods:addItem("Up")
rods:addItem("Center")
rods:addItem("Down")
rods:addItem("Right")


window:addChild(rods)

workspace:draw()
workspace:start()