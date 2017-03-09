-- This file forces clients to download the assets for the weapons (weapons icons and sounds).
-- If you are distributing those files via FastDL, comment out the line below.

--TODO add correct ID
--resource.AddWorkshop( "" )

if (SERVER) then
	resource.AddFile( "materials/vgui/ttt/equip/coin.png" )
	resource.AddFile( "materials/vgui/ttt/equip/briefcase.png" )
	resource.AddFile( "materials/vgui/ttt/equip/package.png" )
end
