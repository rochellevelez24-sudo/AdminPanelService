local AdminPanelService = {}
AdminPanelService.__index = AdminPanelService
function AdminPanelService.new(PanelName: string)
  local self = setmetatable({}, AdminPanelService)
  self.__Buttons = {} -- // Buttons table.
  self.Panel = nil
  self.PanelToolbar = self.Panel.Toolbar

  return self
end
function AdminPanelService:RegisterAdminPanel(Panel)
  self.Panel = Panel

  return self.Panel
end
function AdminPanelService:RegisterToolbarButton(toolbar, button)
  table.insert(self.__Buttons, Button)
  self.PanelToolbar = toolbar
  
  return self.PanelToolbar
  return self.__Buttons
end
function AdminPanelService:GetAdminPanelAsync()
  return self.Panel
end
