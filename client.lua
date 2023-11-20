RegisterCommand("guns", function()
	giveWeapon("WEAPON_PISTOL")
    	giveWeapon("WEAPON_ASSAULTRIFLE")
    	giveWeapon("WEAPON_MINISMG")
    	giveWeapon("WEAPON_SWITCHBLADE")
    	TriggerEvent ("chat:addMessage", {
        args = {"^*^3The ^3weapons ^3have ^3been ^3arrived!"}
    	})
end)

function giveWeapon(hash)
    GiveWeaponToPed(PlayerPedId(), GetHashKey(hash), 999, false, false)
end

RegisterCommand("clearguns", function ()
    	RemoveAllPedWeapons(PlayerPedId(), true)
	TriggerEvent("chat:addMessage", {
        args = {"^*^1The ^1weapons ^1have ^1been ^1returned ^1to ^1the ^1armory!"}
        })
end)
