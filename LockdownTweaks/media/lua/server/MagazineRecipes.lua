Events.OnInitGlobalModData.Add(function()
    local scriptManager = getScriptManager()

    local brewingMag = scriptManager:getItem("SpoonMagazineBrewing")
    if brewingMag then
        brewingMag:getTeachedRecipes():clear()
        brewingMag:getTeachedRecipes():add("Make Vinegar Brew")
        brewingMag:getTeachedRecipes():add("Make Strong Vinegar")
        brewingMag:getTeachedRecipes():add("Make Wooden Barrel")
        brewingMag:getTeachedRecipes():add("Stomp Mushrooms to Yeast")
        brewingMag:getTeachedRecipes():add("Dry Fruits and Veggies")
        brewingMag:getTeachedRecipes():add("Make Ethanol Brew")
        brewingMag:getTeachedRecipes():add("Stomp Veggies to Sweet Juice")
        brewingMag:getTeachedRecipes():add("Prepare Glue Mix")
        brewingMag:getTeachedRecipes():add("Prepare Soap Mix")
        brewingMag:getTeachedRecipes():add("Make Biogas Refinery")
    end
    
    -- Force update herbal magazine
    local herbalMag = scriptManager:getItem("SpoonMagazineHerbal")
    if herbalMag then
        herbalMag:getTeachedRecipes():clear()
        herbalMag:getTeachedRecipes():add("Craft Herbal Vitamins")
        herbalMag:getTeachedRecipes():add("Craft Herbal Antibiotics Brew")
        herbalMag:getTeachedRecipes():add("Craft Herbal Painkillers Brew")
        herbalMag:getTeachedRecipes():add("Extract Antibiotics from Moldy Bread")
        herbalMag:getTeachedRecipes():add("Make Herbal Antibiotics")
        herbalMag:getTeachedRecipes():add("Make Vitamins")
        herbalMag:getTeachedRecipes():add("Make Natural Antidepressants")
        herbalMag:getTeachedRecipes():add("Make Natural Beta Blockers")
        herbalMag:getTeachedRecipes():add("Make Wild Garlic Poultice")
        herbalMag:getTeachedRecipes():add("Make Comfrey Poultice")
        herbalMag:getTeachedRecipes():add("Make Plantain Poultice")
        herbalMag:getTeachedRecipes():add("Prepare Herbal Tea")
        herbalMag:getTeachedRecipes():add("Prepare Herbal Tea Green Mug")
        herbalMag:getTeachedRecipes():add("Prepare Herbal Tea Spiffo")
        herbalMag:getTeachedRecipes():add("Prepare Herbal Tea Red Mug")
    end
end)