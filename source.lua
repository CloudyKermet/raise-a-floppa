local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local plr = game.Players.LocalPlayer
local RunService = game:GetService("RunService")
local autocollect = false
local autoclick = false

local Window = Rayfield:CreateWindow({
   Name = "Roll an Anime v5",
   LoadingTitle = "By Kermet",
   LoadingSubtitle = "Loading...",
   ShowText = "Rayfield",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "MqvCGQCcxm", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the Discord every time they load it up
   }
})

RunService.RenderStepped:Connect(function(dt)
if autocollect then
 for _, item in ipairs(workspace:GetChildren()) do
           if item.name == "Money" or item.name == "Money Bag" then
        firetouchinterest(humanoidRootPart, item, 0)
        wait(0.1)
        firetouchinterest(humanoidRootPart, item, 1)
end
end
end
end)

local Tab1 = Window:CreateTab("Auto", 4483362458)

local tgl1 = Tab1:CreateToggle({
   Name = "Auto-Collect",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
  autocollect = not autocollect
   end,
})

local tgl2 = Tab1:CreateToggle({
   Name = "Auto-Click",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
  autoclick = not autoclick
   end,
})
