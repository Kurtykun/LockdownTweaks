if getActivatedMods():contains("RV_Interior_Vanilla") then
    require ('BounderServerDeal')
    local patchVehicles = {
        "Base.73Winnebago",

    }
    for i=1,#patchVehicles do
        RVInterior.shareInterior(patchVehicles[i], "Base.86bounder")
    end
    end


    