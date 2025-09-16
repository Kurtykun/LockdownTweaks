if getActivatedMods():contains("RV_Interior_Vanilla") then
    require ('VanChevyServerDeal')
    local patchVehicles = {
        "Base.VanRadio_3N",

    }
    for i=1,#patchVehicles do
        RVInterior.shareInterior(patchVehicles[i], "Base.93vandura")
    end
    end