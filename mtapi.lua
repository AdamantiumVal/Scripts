repeat wait() until game:IsLoaded()
if not getgenv().MTAPIMutex then loadstring(game:HttpGet("https://pastebin.com/raw/UwFCVrhS", true))() end
local Players = game:GetService("Players")
local ScriptContext = game:GetService("ScriptContext")
local Humanoid = game.Players.LocalPlayer.Character.Humanoid

for i,v in next, getconnections(ScriptContext.Error) do
    v:Disable()
end

for i,v in next, getconnections(Humanoid.AncestryChanged) do
    v:Disable()
end

local mt = getrawmetatable(game)
setreadonly(mt,false)

oldindex = mt.__namecall
mt.__namecall = newcclosure(function(self,...)
    
local args = {...}
local method = getnamecallmethod()

if method == "Kick" or method == "kick" then

return wait(9e9)
end

return oldindex(self,...)
end)
