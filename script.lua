if game.PlaceId == 11040063484 then 
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Nie hub (BETA)", HidePremium = false, IntroEnabled = false, IntroText = "Nie hub", SaveConfig = true, ConfigFolder = "Nie Game script"})
    
_G.autoHit = true




function autohit()
    while _G.autoHit == true do
        wait(0,000000000000000000000001)
        game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
    end

 end

   function autoeq()
        wait()
        game:GetService("ReplicatedStorage").Packages.Knit.Services.WeaponInvService.RF.EquipBest:InvokeServer()
    end





    function pet()
        game:GetService("ReplicatedStorage").Packages.Knit.Services.PetInvService.RF.EquipBest:InvokeServer()
    end
       
   

  



    local FarmTab = Window:MakeTab({
        Name = "AutoFarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })




    local PetsTab = Window:MakeTab({
        Name = "pet",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local SwordTab = Window:MakeTab({
        Name = "Sword",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })



    local ExtraTab = Window:MakeTab({
        Name = "Extra",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })









    FarmTab:AddToggle({
        Name = "Auto Hit",
        Default = false,
        Callback = function(Value)
            _G.autoHit = Value
            autohit()
        end    
    })




          PetsTab:AddButton({
            Name = "equip best pet",
            Callback = function()
                      pet()
              end  
            })  

            SwordTab:AddButton({
                Name = "equip best sword",
                Callback = function()
                          sword()
                  end  
                })  
    
    


    end
    OrionLib:Init()
