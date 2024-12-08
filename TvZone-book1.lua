--[[
  
 Hub name: TvHub
 
 Creator by TvZone
 
 Modified by Laelmano24 (Rael)

]]

local Library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Acrylic/refs/heads/main/source"))()

local RunService = game:GetService("RunService")
local MapId = game.PlaceId

-- Book1 Chapter 1 Map Ids
local B1C1_FirstMap = {6296321810,6479231833}
-- Book1 Chapter 1 Map Ids
local B1C1_SecondMap = {6301638949,6480994221}


-- Book1 Chapter 2 Map Ids
local B1C2_FirstMap = {6373539583,6485055338}
-- Book1 Chapter 2 Map Ids
local B1C2_SecondMap = {6406571212,6485055836}
-- Book1 Chapter 2 Map Ids
local B1C2_ThirdMap = {6425178683,6485056556}


-- Book1 Chapter 3 Map Ids
local B1C3_FirstMap = {6472459099,6688734180}
-- Book1 Chapter 3 Map Ids
local B1C3_SecondMap = {6682163754,6688734313}
-- Book1 Chapter 3 Map Ids
local B1C3_ThirdMap = {6682164423,6688734395}

-- Global variable responsible for storing the Teleport runservice for saigomo
if getgenv().TvHubRunService then
  getgenv().TvHubRunService:Disconnect()
  getgenv().TvHubRunService = nil
end

-- Book1 Chapter 4 Map Ids
local B1C4_FirstMap = {7251865082,7265396387}
-- Book1 Chapter 4 Map Ids
local B1C4_SecondMap = {7251866503,7265396805}
-- Book1 Chapter 4 Map Ids
local B1C4_ThirdMap = {7251867155,7265397072}
-- Book1 Chapter 4 Map Ids
local B1C4_FourthMap = {7251867574,7265397848}

-- Function to teleport to saigomo and increase the hitbox
function TpSaigomoAndIncreaseHitBox()

  local Player = game.Players.LocalPlayer.Character
  local PlayerRootPart = Player:FindFirstChild("HumanoidRootPart")

  -- Ideal height for Saigomo
  local SaigomoHeightOffset = 27
  
  local bossbattle = workspace:FindFirstChild("BossBattle")
  
  if bossbattle then
    local Saigomo = bossbattle:FindFirstChild("Saigomo")

    if Saigomo then
      local SaigomoRootPart = Saigomo:FindFirstChild("HumanoidRootPart")
      local spiderhitbox = Saigomo:FindFirstChild("SpiderHitbox") -- Corrigido para manter a consistência na capitalização
      
      local targetPosition = SaigomoRootPart.Position + Vector3.new(0, SaigomoHeightOffset, 0)

      -- Teleport the player to the Saigomo
      PlayerRootPart.CFrame = CFrame.new(targetPosition)

      -- Increase hitbox
      if spiderhitbox then
        spiderhitbox.Size = Vector3.new(150, 21, 21)
      end
    end
  end
end

local Window = Library:CreateWindow({
  Title = "TvHub",
  Logo = "rbxassetid://",
})

local Main = Window:AddTab({
  Title = "Main",
  Icon = "",
})

-- Check if the ids are the same as in the table
if table.find(B1C1_FirstMap, MapId) then
  
  Main:AddBlock("Auto pass part 1")
  
  Main:AddButton({
    Title = "Auto Pass",
    Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3460.842529296875, 37.64611053466797, -1541.806884765625)
    end,
  })
  
  Main:AddBlock("Teleport to Jigoku")
  
  Main:AddButton({
    Title = "Tp Jigoku",
    Callback = function()
      game:GetService("TeleportService"):Teleport(7618863566, game.Players.LocalPlayer)
    end,
  })

-- Check if the ids are the same as in the table
elseif table.find(B1C1_SecondMap, MapId) then
  
  
  Main:AddBlock("Auto pass part 2")
  
  Main:AddButton({
    Title = "Auto Pass",
    Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1274.013916015625, 199.53997802734375, -2536.854736328125)
    end,
  })
  
-- Check if the ids are the same as in the table
elseif table.find(B1C2_FirstMap, MapId) then
  
  Main:AddBlock("Auto pass part 1")
  
  Main:AddButton({
    Title = "Auto Pass",
    Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(65.125, 54.293, -1584.817)
    end,
  })

-- Check if the ids are the same as in the table
elseif table.find(B1C2_SecondMap, MapId) then
  
  Main:AddBlock("Auto pass part 2")
  
  Main:AddButton({
    Title = "Auto Pass",
    Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(236.379, 101.998, -588.193)
    end,
  })

-- Check if the ids are the same as in the table
elseif table.find(B1C2_ThirdMap, MapId) then
  
  Main:AddBlock("Auto pass part 3")
  
  Main:AddButton({
    Title = "Auto Pass",
    Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(908.482, 72.731, -356.092)
    end,
  })

-- Check if the ids are the same as in the table
elseif table.find(B1C3_FirstMap, MapId) then
  
  Main:AddBlock("Auto pass part 1")
  
  Main:AddButton({
    Title = "Auto Pass",
    Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2411.8251953125, -14.687599182128906, 2276.95361328125)
    end,
  })

-- Check if the ids are the same as in the table
elseif table.find(B1C3_SecondMap, MapId) then
  
  Main:AddBlock("Auto pass part 2")
  
  Main:AddButton({
    Title = "Auto Pass",
    Callback = function()
      local Plr = game.Players.LocalPlayer
      local playerName = Plr.Name

      for _, child in pairs(workspace:GetChildren()) do

        if child.Name == playerName then
              
          for _, part in pairs(child:GetChildren()) do
            if part:IsA("BasePart") then
              part.CanCollide = false
            end
          end
        end
      end

      wait(0.2)

      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(242.9176025390625, 31.374202728271484, 454.5718688964844)
    end,
  })

-- Check if the ids are the same as in the table
elseif table.find(B1C3_ThirdMap, MapId) then
  
  Main:AddBlock("Auto pass part 3")
  
  Main:AddButton({
    Title = "Auto Pass",
    Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-625.2941284179688, 947.8041381835938, -1368.4892578125)
    end,
  })
  
-- Check if the ids are the same as in the table
elseif table.find(B1C4_FirstMap, MapId) then
  
  Main:AddBlock("Auto pass part 1")
  
  Main:AddButton({
    Title = "Auto Pass",
    Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89.58648681640625, -50.999027252197266, -1415.93310546875)
    end,
  })

-- Check if the ids are the same as in the table
elseif table.find(B1C4_SecondMap, MapId) then
  
  Main:AddBlock("Auto pass part 2")
  
  Main:AddButton({
    Title = "Auto Pass",
    Callback = function()
      local function BorboletaCollect()
        
        for _, borboleta in ipairs(workspace.Butterflies:GetChildren()) do

          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(borboleta.Position)
          task.wait(0.3)
          fireproximityprompt(borboleta.ProximityPrompt)

        end
      end

      for _ = 1, 8 do
        BorboletaCollect()
        task.wait(0.5)
      end
    end,
  })

-- Check if the ids are the same as in the table
elseif table.find(B1C4_ThirdMap, MapId) then
  
  Main:AddBlock("Auto pass part 3")
  
  Main:AddButton({
    Title = "Auto Pass",
    Callback = function()
      local Burner = workspace.Well.Burner

      local armadura = workspace.GameInfo.PuzzleItems:GetChildren()

      for _, Armor in ipairs(armadura) do

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Armor.Position)
        wait(0.2)
        fireproximityprompt(Armor.ProximityPrompt)
        wait(0.2)
      end

      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Burner.Position)

      wait(0.2)

      for i = 1, 6 do
        fireproximityprompt(Burner.ProximityPrompt)
        wait(0.2)
      end
    end,
  })

-- Check if the ids are the same as in the table
elseif table.find(B1C4_FourthMap, MapId) then
  
  Main:AddBlock("Auto pass part 4")
  
  Main:AddButton({
    Title = "Auto destroy the hearts",
    Callback = function()
      local player = game.Players.LocalPlayer
      local backpack = player.Backpack

      local RaelHubCreateFloor = loadstring(game:HttpGet("https://raw.githubusercontent.com/Raelhub/Rael-hub-function/main/function/criarplace/script.txt"))()

      function equipItem(itemName)
        local item = backpack:FindFirstChild(itemName)
        if item then
          player.Character.Humanoid:EquipTool(item)
        end
      end

      equipItem("Katana")

      

      RaelHubCreateFloor.Criarchao(Vector3.new(3208.4, 145.67, 2187.42))

      wait(0.2)

      RaelHubCreateFloor.Criarchao(Vector3.new(2807.84, 130.84, 2427.17))

      wait(0.2)

      RaelHubCreateFloor.Criarchao(Vector3.new(2605.05, 142.91, 2407.48))

      local function checkHeart(index, position)

        while true do
          local heart = workspace.GameHearts:GetChildren()[index]
          if heart and heart:FindFirstChild("Destroyed") then
            break
          else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position)
          end
          task.wait(0.5)
        end
      end

      checkHeart(1, Vector3.new(3208.44, 148.64, 2187.78))
      checkHeart(3, Vector3.new(2806.88, 134.34, 2426.09))
      checkHeart(2, Vector3.new(2603.96, 146.41, 2409))
    end,
  })
  
  Main:AddToggle({
    Title = "Auto teleport to saigomo",
    Tip = "",
    Default = false,
    Callback = function(value)
      if value then
        getgenv().TvHubRunService = RunService.Heartbeat:Connect(TpSaigomoAndIncreaseHitBox)
      else
        if getgenv().TvHubRunService then
          getgenv().TvHubRunService:Disconnect()
          getgenv().TvHubRunService = nil
        end
      end
    end,
  })
end