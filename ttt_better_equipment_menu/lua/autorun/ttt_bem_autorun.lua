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

		local dgui = vgui.Create("DForm", dsettings)
		dgui:SetName("Item List Settings")
		dgui:NumSlider("ttt_bem_cols (def. 4)", "ttt_bem_cols", 1, 20, 0)
		dgui:NumSlider("ttt_bem_rows (def. 5)", "ttt_bem_rows", 1, 20, 0)
		dgui:NumSlider("ttt_bem_size (def. 64)", "ttt_bem_size", 32, 128, 0)
		dsettings:AddItem(dgui)

		dtabs:AddSheet("BEM settings", dsettings, "icon16/cog.png", false, false, "Better Equipment Menu Settings")
	end)
end
