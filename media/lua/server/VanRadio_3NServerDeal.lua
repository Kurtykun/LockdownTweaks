if getActivatedMods():contains("RV_Interior_Vanilla") then
    require ('VanShortServerDeal')
    local patchVehicles = {
        "Base.VanRadio_3N",

    }
    for i=1,#patchVehicles do
        RVInterior.shareInterior(patchVehicles[i], "Base.93G10van")
    end
    end


    