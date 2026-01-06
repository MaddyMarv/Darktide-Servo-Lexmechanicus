return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`zServo_Lexmechanicus` encountered an error loading the Darktide Mod Framework.")

		new_mod("zServo_Lexmechanicus", {
			mod_script		 = "zServo_Lexmechanicus/zServo_Lexmechanicus",
			mod_data		 = "zServo_Lexmechanicus/zServo_Lexmechanicus_data",
			mod_localization = "zServo_Lexmechanicus/zServo_Lexmechanicus_localization",
		})
	end,
	packages = {},
}
