# AdminPanelService

A module in Roblox Studio that controls admin panels.
# Example: 

```lua
local APS = require(game.ReplicatedStorage.AdminPanelService)
local WaitForUI = require(game:GetService("ReplicatedStorage").WaitForUI)

local AdminPanelUI = WaitForUI:Wait(game:GetService("StarterGui").AdminPanelGui)

APS:RegisterAdminPanel(AdminPanelUI)
-- Getting the Admin panel UI.
local AdminPanel = APS:GetAdminUI()

local Give = AdminPanel.Panel.Toolbar.GiveButton
local Button = APS:RegisterToolbarButton(AdminPanel.Panel.Toolbar, Give)
Button.Pressed:Connect(function()
   print("Test")
end
