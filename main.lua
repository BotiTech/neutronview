local gui = require("GUI")
local system = require("System")

local workspace,window,menu = system.addWindow(gui.filledWindow(1,1,82,28,0x262626))

window:addChild(gui.label(window.width/2-20,1,40,3,0xFFFF00,"NeutronView v1.0")):setAlignment(gui.ALIGNMENT_HORIZONTAL_CENTER, gui.ALIGNMENT_VERTICAL_CENTER)
-------

local rod_addrs = {"ec2e625b", "e3c6b4a7", "e4d8c9b2", "e5f9d2c3"}

local rods = gui.container(2,4,78,24)
for i, addr in ipairs(rod_addrs) do
    local rod = gui.container(1,1,78,3)
    local label = gui.label(1,1,7,3,0xFFFFFF, "Rod Address: " .. addr)
    label:setAlignment(gui.ALIGNMENT_HORIZONTAL_CENTER, gui.ALIGNMENT_VERTICAL_CENTER)
    local button = gui.button(label.x+1,1,15,3,0x00FF00,0xFFFFFF,0xFFFF00,0x000000,"Connect to Rod")

    rod:addChild(label)
    rod:addChild(button)
    rods:addChild(rod)
end

window:addChild(gui.panel(2,4,78,24,0xFFFFFF))
window:addChild(rods)

workspace:draw()
workspace:start()