local gui = require("GUI")
local system = require("System")

local workspace,window,menu = system.addWindow(gui.filledWindow(1,1,82,28,0x262626))

window:addChild(gui.label(window.width/2-20,1,40,3,0xFFFF00,"NeutronView v1.0")):setAlignment(gui.ALIGNMENT_HORIZONTAL_CENTER, gui.ALIGNMENT_VERTICAL_CENTER)
-------

window:addChild(gui.comboBox(3,2,76,3,0x262626,0xFFFFFF,0x000000,0xFFFF00,"Select a file type")):setAlignment(gui.ALIGNMENT_HORIZONTAL_CENTER, gui.ALIGNMENT_VERTICAL_CENTER)

window:addChild(gui.button(window.width/2-10,5,20,3,0x00FF00,0xFFFFFF,0x000000,0xFFFF00,"Submit")):setAlignment(gui.ALIGNMENT_HORIZONTAL_CENTER, gui.ALIGNMENT_VERTICAL_CENTER)

workspace:draw()
workspace:start()