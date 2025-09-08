-- Adds ammo conversion recipes to specific professions in Project Zomboid
-- Directly overrides profession definitions. 
Events.OnInitGlobalModData.Add(function()
    if isClient() and not isServer() then return end
    
    local professions = ProfessionFactory.getProfessions()
    local recipesToAdd = {
        "Convert .223 to 5.56",
        "Convert box of .223 to 5.56", 
        "Write .223 converts to 5.56 Note"
    }
    
    for i = 0, professions:size() - 1 do
        local prof = professions:get(i)
        local profType = prof:getType()
        
        if profType == "policeofficer" or profType == "veteran" or 
           profType == "soldier" or profType == "detective" then
            
            for _, recipe in ipairs(recipesToAdd) do
                prof:getFreeRecipes():add(recipe)
            end
            print("[YourModName] Added recipes to profession definition: " .. profType)
        end
    end
end)
-- This code very likely isnt working as intended and should be tested on server and removed if not working.
-- If working the profession will show in the recipes list. 

-- Backup method which add recpie to players at runtime it doesnt override the mod it just adds the recipes to the player.
Events.OnGameStart.Add(function()
    local player = getPlayer()
    if not player then return end

    local prof = player:getDescriptor():getProfession()
    local targetProf = {
        policeofficer = true, 
        veteran = true, 
        soldier = true, 
        detective = true
    }
    
    if targetProf[prof] then
        player:getKnownRecipes():add("Convert .223 to 5.56")
        player:getKnownRecipes():add("Convert box of .223 to 5.56")
        player:getKnownRecipes():add("Write .223 = 5.56 Note")
        
        print("[YourModName] Added ammo conversion recipes to player: " .. prof)
    end
end)

Events.OnCreatePlayer.Add(function(playerIndex, player)
    if not player then return end
    
    local prof = player:getDescriptor():getProfession()
    local targetProf = {
        policeofficer = true, 
        veteran = true, 
        soldier = true, 
        detective = true
    }
    
    if targetProf[prof] then
        player:getKnownRecipes():add("Convert .223 to 5.56")
        player:getKnownRecipes():add("Convert box of .223 to 5.56")
        player:getKnownRecipes():add("Write .223 = 5.56 Note")
        
        print("[YourModName] Added ammo conversion recipes to joining player: " .. prof)
    end
end)