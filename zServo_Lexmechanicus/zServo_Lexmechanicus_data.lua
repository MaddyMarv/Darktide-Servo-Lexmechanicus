-- zServo_Lexmechanicus_data.lua
local mod = get_mod("zServo_Lexmechanicus")

return {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	options = {
		widgets = {
			{
				setting_id = "enable_servo",
				type = "checkbox",
				default_value = true,
				sub_widgets = {
					{
						setting_id = "show_category_prefix",
						type = "checkbox",
						default_value = true,
					},
					{
						setting_id = "use_custom_names",
						type = "checkbox",
						default_value = true,
					}
				}
			},
			-- {
				-- setting_id = "debug_mode",
				-- type = "checkbox",
				-- default_value = false,
			-- },
			{
				setting_id = "language_override",
				type = "dropdown",
				default_value = "auto",
				options = {
					{text = "Auto",					value = "auto"},
					{text = "English",				value = "en"},
					{text = "Russian",				value = "ru"},
					{text = "French",				value = "fr"},
					{text = "Chinese Traditional",	value = "zh-tw"},
					{text = "Chinese Simplified",	value = "zh-cn"},
					{text = "German",				value = "de"},
					{text = "Italian",				value = "it"},
					{text = "Japanese",				value = "ja"},
					{text = "Korean",				value = "ko"},
					{text = "Polish",				value = "pl"},
					{text = "Portuguese",			value = "pt-br"},
					{text = "Spanish",				value = "es"},
				}
			}
		},
	},
}