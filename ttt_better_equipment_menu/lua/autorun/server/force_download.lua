-- This file forces clients to download the assets for the weapons (weapons icons and sounds).
-- If you are distributing those files via FastDL, comment out the line below.

-- CreateConVar("ttt_bem_cols", 4, {FCVAR_SERVER_CAN_EXECUTE, FCVAR_ARCHIVE, FCVAR_REPLICATED}, "Sets the number of columns in the Traitor/Detective menu's item list.")

if (SERVER) then
	resource.AddFile( "materials/vgui/ttt/equip/coin.png" )
	resource.AddFile( "materials/vgui/ttt/equip/briefcase.png" )
	resource.AddFile( "materials/vgui/ttt/equip/package.png" )
end
