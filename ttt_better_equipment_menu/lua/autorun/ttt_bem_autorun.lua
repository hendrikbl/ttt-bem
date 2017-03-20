-- create serverside ConVars
local allowChange = CreateConVar("ttt_bem_allow_change", 1, { FCVAR_ARCHIVE, FCVAR_REPLICATED, FCVAR_SERVER_CAN_EXECUTE }, "Allow clients to change the look of the Traitor/Detective menu" )
local servercols = CreateConVar("ttt_bem_sv_cols", 4, { FCVAR_ARCHIVE, FCVAR_REPLICATED, FCVAR_SERVER_CAN_EXECUTE }, "Sets the number of columns in the Traitor/Detective menu's item list (serverside)" )
local serverrow = CreateConVar("ttt_bem_sv_rows", 5, { FCVAR_ARCHIVE, FCVAR_REPLICATED, FCVAR_SERVER_CAN_EXECUTE }, "Sets the number of rows in the Traitor/Detective menu's item list (serverside)" )
local serversize = CreateConVar("ttt_bem_sv_size", 64, { FCVAR_ARCHIVE, FCVAR_REPLICATED, FCVAR_SERVER_CAN_EXECUTE }, "Sets the item size in the Traitor/Detective menu's item list (serverside)" )

if CLIENT then
	-- BEM Settings in F1 menu
	hook.Add("TTTSettingsTabs", "BEM_TTTSettingsTab", function(dtabs)
		local padding = dtabs:GetPadding()
		padding = padding * 2

		local dsettings = vgui.Create("DPanelList", dtabs)
		dsettings:StretchToParent(0,0,padding,0)
		dsettings:EnableVerticalScrollbar(true)
		dsettings:SetPadding(10)
		dsettings:SetSpacing(10)

		local dclient = vgui.Create("DForm", dsettings)
		dclient:SetName("Item List Settings")

		if allowChange:GetBool() then
			dclient:Help("All changes made here are clientside and will only apply to your own menu.")
			dclient:NumSlider("ttt_bem_cols (def. 4)", "ttt_bem_cols", 1, 20, 0)
			dclient:NumSlider("ttt_bem_rows (def. 5)", "ttt_bem_rows", 1, 20, 0)
			dclient:NumSlider("ttt_bem_size (def. 64)", "ttt_bem_size", 32, 128, 0)
		else
			dclient:Help("Individual changes to the Traitor/Detective menu are not allowed on this server. Please contact a server admin for details.")
		end
		dsettings:AddItem(dclient)

		dtabs:AddSheet("BEM settings", dsettings, "icon16/cog.png", false, false, "Better Equipment Menu Settings")
	end)
end
