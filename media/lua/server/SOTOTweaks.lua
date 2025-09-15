-- Adds ammo conversion recipes to specific professions and traits in Project Zomboid
-- Directly overrides profession definitions. 
Events.OnInitGlobalModData.Add(function()
    if isClient() and not isServer() then return end
    
    local professions = ProfessionFactory.getProfessions()
    local recipesToAdd = {
        "Convert .223 to 5.56",
        "Convert box of .223 to 5.56", 
        "Write .223 = 5.56 Note"
    }
    
    -- Add recipes to professions
    for i = 0, professions:size() - 1 do
        local prof = professions:get(i)
        local profType = prof:getType()
        
        if profType == "policeofficer" or profType == "veteran" or 
           profType == "soldier" or profType == "detective" then
            
            for _, recipe in ipairs(recipesToAdd) do
                prof:getFreeRecipes():add(recipe)
            end
            print("Added recipes to profession definition: " .. profType)
        end
    end
    
    -- Add recipes to traits
    local traits = TraitFactory.getTraits()
    for i = 0, traits:size() - 1 do
        local trait = traits:get(i)
        local traitType = trait:getType()
        
        if traitType == "Hunter" or traitType == "Shooter" or 
           traitType == "Shooter2" or traitType == "ExpShooter" then
            
            for _, recipe in ipairs(recipesToAdd) do
                trait:getFreeRecipes():add(recipe)
            end
            print("Added recipes to trait definition: " .. traitType)
        end
    end
end)

-- Backup method which adds recipes to players at runtime
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
    
    local targetTraits = {
        Hunter = true,
        Shooter = true,
        ExpShooter = true
    }
    
    local shouldAddRecipes = false
    local reason = ""
    
    -- Check profession
    if targetProf[prof] then
        shouldAddRecipes = true
        reason = "profession: " .. prof
    end
    
    -- Check traits
    if not shouldAddRecipes then
        for traitName, _ in pairs(targetTraits) do
            if player:HasTrait(traitName) then
                shouldAddRecipes = true
                reason = "trait: " .. traitName
                break
            end
        end
    end
    
    if shouldAddRecipes then
        player:getKnownRecipes():add("Convert .223 to 5.56")
        player:getKnownRecipes():add("Convert box of .223 to 5.56")
        player:getKnownRecipes():add("Write .223 = 5.56 Note")
        
        print("Added ammo conversion recipes to player due to " .. reason)
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
    
    local targetTraits = {
        Hunter = true,
        Shooter = true,
        Shooter2 = true,
        ExpShooter = true
    }
    
    local shouldAddRecipes = false
    local reason = ""
    
    -- Check profession
    if targetProf[prof] then
        shouldAddRecipes = true
        reason = "profession: " .. prof
    end
    
    -- Check traits
    if not shouldAddRecipes then
        for traitName, _ in pairs(targetTraits) do
            if player:HasTrait(traitName) then
                shouldAddRecipes = true
                reason = "trait: " .. traitName
                break
            end
        end
    end
    
    if shouldAddRecipes then
        player:getKnownRecipes():add("Convert .223 to 5.56")
        player:getKnownRecipes():add("Convert box of .223 to 5.56")
        player:getKnownRecipes():add("Write .223 = 5.56 Note")
        
        print("Added ammo conversion recipes to joining player due to " .. reason)
    end
end)