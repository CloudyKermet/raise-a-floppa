local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local player = game.Players.LocalPlayer
local character = player.Character
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local RunService = game:GetService("RunService")
local autocollect = false
local autoclick = false
local autorent = false


local Window = Rayfield:CreateWindow({
   Name = "raise a floopa",
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
local money = workspace:FindFirstChild("Money")
local moneybag = workspace:FindFirstChild("Money Bag")
local rentbag = workspace:FindFirstChild("Rent")
         
         if money then
        firetouchinterest(humanoidRootPart, money, 0)
         end
         
         if moneybag then
         firetouchinterest(humanoidRootPart, moneybag, 0)
         end

         if rentbag then
         firetouchinterest(humanoidRootPart, rentbag, 0)
         end
end
      if autoclick then
         fireclickdetector(workspace.Floppa.ClickDetector)
end

      if autorent then
      if workspace.Roommate then
      if workspace.Roommate.Head.Rent.Value == true then
      game:GetService("ReplicatedStorage").RequestRent:FireServer()
               task.wait(1)
      game:GetService("ReplicatedStorage").RequestRaise:FireServer()
               end
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

local tgl3 = Tab1:CreateToggle({
   Name = "Auto-Rent",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
  autorent = not autorent
   end,
})
