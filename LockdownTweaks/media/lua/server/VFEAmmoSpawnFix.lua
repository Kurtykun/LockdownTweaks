-- Function to remove all instances of specific ammo types from distribution
local function removeAmmoFromDist(distName, ammoTypes)
    local dist = ProceduralDistributions.list[distName]
    if not dist or not dist.items then return end
    
    local items = dist.items
    local i = 1
    while i <= #items do
        local itemName = items[i]
        local isTargetAmmo = false
        
        -- Check if this item is one of our target ammo types
        for _, ammoType in ipairs(ammoTypes) do
            if itemName == ammoType then
                isTargetAmmo = true
                break
            end
        end
        
        if isTargetAmmo then
            table.remove(items, i + 1) -- Remove weight
            table.remove(items, i)     -- Remove item
            print("Removed " .. itemName .. " from " .. distName)
        else
            i = i + 2 -- Skip to next item/weight pair
        end
    end
end

-- List of ammo types we want to control
local targetAmmo = {
    "Base.57Box", "Base.46Box", "Base.46Pack", 
    "Base.57Pack", "Base.46Case", "Base.57Case"
}

-- Remove all instances of target ammo from distributions
local distributions = {
    "GunStoreCounter", "GunStoreShelf", "GunStoreDisplayCase",
    "GunStoreAmmunition", "PoliceStorageGuns", "PoliceStorageAmmunition", 
    "ArmyStorageGuns", "ArmyStorageAmmunition", "FirearmWeapons"
}

for _, distName in ipairs(distributions) do
    removeAmmoFromDist(distName, targetAmmo)
end
-- Adds back the ammo types with reduced spawn rates.
require 'Items/ProceduralDistributions'

table.insert(ProceduralDistributions.list.GunStoreCounter.items, "Base.57Box");
table.insert(ProceduralDistributions.list.GunStoreCounter.items, 5);

table.insert(ProceduralDistributions.list.GunStoreCounter.items, "Base.46Box");
table.insert(ProceduralDistributions.list.GunStoreCounter.items, 5);



table.insert(ProceduralDistributions.list.GunStoreShelf.items, "Base.46Box");
table.insert(ProceduralDistributions.list.GunStoreShelf.items, 5);

table.insert(ProceduralDistributions.list.GunStoreShelf.items, "Base.46Box");
table.insert(ProceduralDistributions.list.GunStoreShelf.items, 10);

table.insert(ProceduralDistributions.list.GunStoreShelf.items, "Base.57Box");
table.insert(ProceduralDistributions.list.GunStoreShelf.items, 5);

table.insert(ProceduralDistributions.list.GunStoreShelf.items, "Base.57Box");
table.insert(ProceduralDistributions.list.GunStoreShelf.items, 10);

table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, "Base.57Box");
table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, 2);

table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, "Base.46Box");
table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, 2);



table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, "Base.46Pack");
table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, 0.5);

table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, "Base.57Pack");
table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, 0.5);



table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, "Base.46Box");
table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, 10);

table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, "Base.46Box");
table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, 10);

table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, "Base.46Box");
table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, 5);

table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, "Base.46Box");
table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, 5);

table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, "Base.57Box");
table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, 10);

table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, "Base.57Box");
table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, 10);

table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, "Base.57Box");
table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, 5);

table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, "Base.57Box");
table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, 5);

table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, "Base.46Pack");
table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, 1);

table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, "Base.57Pack");
table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, 1);



table.insert(ProceduralDistributions.list.FirearmWeapons.items, "Base.57Box");
table.insert(ProceduralDistributions.list.FirearmWeapons.items, 5);

table.insert(ProceduralDistributions.list.FirearmWeapons.items, "Base.46Box");
table.insert(ProceduralDistributions.list.FirearmWeapons.items, 5);



table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, "Base.57Box");
table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, 10);

table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, "Base.57Box");
table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, 5);

table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, "Base.46Box");
table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, 10);

table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, "Base.46Box");
table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, 5);

table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, "Base.46Pack");
table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, 1);

table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, "Base.57Pack");
table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, 1);

table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, "Base.46Case");
table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, 0.05);

table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, "Base.57Case");
table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, 0.05);



table.insert(ProceduralDistributions.list.PoliceStorageAmmunition.items, "Base.57Box");
table.insert(ProceduralDistributions.list.PoliceStorageAmmunition.items, 5);
table.insert(ProceduralDistributions.list.PoliceStorageAmmunition.items, "Base.57Box");
table.insert(ProceduralDistributions.list.PoliceStorageAmmunition.items, 2);
table.insert(ProceduralDistributions.list.PoliceStorageAmmunition.items, "Base.57Pack");
table.insert(ProceduralDistributions.list.PoliceStorageAmmunition.items, 1);

table.insert(ProceduralDistributions.list.PoliceStorageAmmunition.items, "Base.46Box");
table.insert(ProceduralDistributions.list.PoliceStorageAmmunition.items, 5);
table.insert(ProceduralDistributions.list.PoliceStorageAmmunition.items, "Base.46Box");
table.insert(ProceduralDistributions.list.PoliceStorageAmmunition.items, 2);
table.insert(ProceduralDistributions.list.PoliceStorageAmmunition.items, "Base.46Pack");
table.insert(ProceduralDistributions.list.PoliceStorageAmmunition.items, 1);