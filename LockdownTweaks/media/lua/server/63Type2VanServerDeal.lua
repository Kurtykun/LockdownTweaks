if getActivatedMods():contains("RV_Interior_Vanilla") then
    require ('TrailercamperServerDeal')
    local patchVehicles = {
        "Base.63Type2Van",
        "Base.63Type2VanHippie",
        "Base.63Type2VanApocalypse"
    }
    for i=1,#patchVehicles do
        RVInterior.shareInterior(patchVehicles[i], "Base.Trailercamperscamp")
    end
    end


    