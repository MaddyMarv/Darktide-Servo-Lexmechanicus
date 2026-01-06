-- zServo_Lexmechanicus.lua
local mod = get_mod("zServo_Lexmechanicus")

-- Загружаем данные категоризации
local MOD_LIST = {}
local MOD_CATEGORIES = {}

local function safe_load_file(file_path)
	local success, result = pcall(function()
		return mod:io_dofile(file_path)
	end)

	if success and result then
		return result
	else
		mod:error("Failed to load %s: %s", file_path, tostring(result))
		return {}
	end
end

-- ============================================================================
-- ИНИЦИАЛИЗАЦИЯ ДАННЫХ
-- ============================================================================

function mod.initialize_data()
	MOD_LIST = safe_load_file("zServo_Lexmechanicus/zServo_Lexmechanicus_mod_list") or {}
	MOD_CATEGORIES = safe_load_file("zServo_Lexmechanicus/zServo_Lexmechanicus_categories") or {}

	mod:info("Loaded %d mod categories", table.size(MOD_LIST))
	return MOD_LIST
end

-- Инициализируем сразу
mod.initialize_data()

-- ============================================================================
-- ФУНКЦИИ ЛОКАЛИЗАЦИИ
-- ============================================================================

local _current_language = nil
local _language_fallback = "en"

local function get_current_language()
	if _current_language then
		return _current_language
	end

	-- Проверяем настройку мода
	local language_override = mod:get("language_override")
	if language_override and language_override ~= "auto" then
		_current_language = language_override
		return _current_language
	end

	if Managers and Managers.localization then
		_current_language = Managers.localization:language() or _language_fallback
		return _current_language
	end

	return _language_fallback
end

local function localize_text(localization_table)
	if not localization_table or type(localization_table) ~= "table" then
		return ""
	end

	local lang = get_current_language()

	if localization_table[lang] then
		return localization_table[lang]
	end

	if localization_table.en then
		return localization_table.en
	end

	for _, text in pairs(localization_table) do
		if type(text) == "string" then
			return text
		end
	end

	return ""
end

-- ============================================================================
-- ОСНОВНАЯ ЛОГИКА: ХУК НА СОЗДАНИЕ ОПЦИЙ МОДОВ
-- ============================================================================

-- Получаем DMF
local dmf = get_mod("DMF")

if not dmf then
	mod:error("DMF not found!")
	return
end

-- Функция для получения чистого названия мода (без старых префиксов)
function mod.get_clean_mod_name(mod_id, current_name)
	if not mod._clean_names_cache then
		mod._clean_names_cache = {}
	end

	if mod._clean_names_cache[mod_id] then
		return mod._clean_names_cache[mod_id]
	end

	local clean_name = current_name

	-- Убираем все возможные префиксы категорий в формате [Категория]
	-- Это регулярное выражение убирает "[любой_текст] " с начала строки
	clean_name = string.gsub(clean_name, "^%[.-%]%s+", "")

	-- Убираем лишние пробелы в начале и конце
	clean_name = string.gsub(clean_name, "^%s+", "")
	clean_name = string.gsub(clean_name, "%s+$", "")

	-- Если после очистки строка пустая, используем mod_id
	if clean_name == "" then
		clean_name = mod_id
	end

	mod._clean_names_cache[mod_id] = clean_name
	return clean_name
end

-- Функция для форматирования названия мода
function mod.format_mod_name(mod_id, clean_name)
	if not mod:get("enable_servo") then
		return clean_name
	end

	if not MOD_LIST[mod_id] then
		return clean_name
	end

	local mod_info = MOD_LIST[mod_id]
	local category_text = localize_text(MOD_CATEGORIES[mod_info.category] or mod_info.category)

	-- Получаем название мода
	local mod_name_text = ""
	if mod:get("use_custom_names") then
		mod_name_text = localize_text(mod_info.localized_name) or clean_name
	else
		-- Используем очищенное оригинальное название
		mod_name_text = clean_name
	end

	-- Проверяем, нужно ли добавлять префикс категории
	local add_prefix = mod:get("show_category_prefix") and category_text ~= ""

	if add_prefix then
		return "[" .. category_text .. "] " .. mod_name_text
	else
		return mod_name_text
	end
end

-- Функция для обновления названий модов в options_widgets_data
function mod.update_all_mod_names_in_options()
	if not dmf or not dmf.options_widgets_data then
		if mod:get("debug_mode") then
			mod:warning("DMF options data not available yet")
		end
		return 0
	end

	local updated = 0
	local debug_mode = mod:get("debug_mode")

	for _, mod_data in ipairs(dmf.options_widgets_data) do
		if mod_data[1] and mod_data[1].mod_name then
			local mod_id = mod_data[1].mod_name

			local current_name = mod_data[1].readable_mod_name or mod_data[1].title or mod_id

			-- Получаем чистое название
			local clean_name = mod.get_clean_mod_name(mod_id, current_name)

			-- Форматируем новое название
			local new_name = mod.format_mod_name(mod_id, clean_name)

			if new_name ~= current_name then
				-- Сохраняем самое первое оригинальное название для восстановления
				if not mod._original_names then
					mod._original_names = {}
				end
				if not mod._original_names[mod_id] then
					mod._original_names[mod_id] = clean_name
				end

				-- Обновляем все поля с названиями
				mod_data[1].readable_mod_name = new_name
				mod_data[1].title = new_name
				updated = updated + 1

				if debug_mode then
					mod:info("Updated: %s -> %s", mod_id, new_name)
				end
			end
		end
	end

	if debug_mode then
		mod:info("=== Updated %d mod names ===", updated)
	end

	return updated
end

-- ============================================================================
-- ХУКИ НА DMF
-- ============================================================================

-- Хук на создание опций меню - ОСНОВНОЙ ХУК
mod:hook("DMFOptionsView", "_setup_category_config", function(func, self, config)
	-- Сначала вызываем оригинальную функцию
	local result = func(self, config)

	-- Затем обновляем названия модов
	if mod:get("enable_servo") then
		mod.update_all_mod_names_in_options()
	end

	return result
end)

-- Хук на открытие окна модов
mod:hook_safe("DMFOptionsView", "on_enter", function(self)
	if mod:get("enable_servo") then
		mod.update_all_mod_names_in_options()
	end
end)

-- Хук на сброс опций
mod:hook("DMFOptionsView", "_reset_options_view", function(func, self, reset_all)
	local result = func(self, reset_all)

	if mod:get("enable_servo") then
		mod.update_all_mod_names_in_options()
	end

	return result
end)

-- ============================================================================
-- ХУК НА create_mod_options_settings (ВАЖНО!)
-- ============================================================================

-- Сохраняем оригинальную функцию
local original_create_mod_options_settings = dmf.create_mod_options_settings

-- Создаем обертку
function dmf.create_mod_options_settings(self, options_templates)
	-- Сначала вызываем оригинальную функцию
	local result = original_create_mod_options_settings(self, options_templates)

	-- Если сортировка включена, обновляем названия
	if mod:get("enable_servo") then
		local settings = options_templates.settings

		for i = 1, #settings do
			local setting = settings[i]
			if setting.mod_name and MOD_LIST[setting.mod_name] then
				local mod_id = setting.mod_name

				-- Обновляем заголовки категорий (group_header)
				if setting.widget_type == "group_header" and setting.display_name then
					local current_name = setting.display_name
					local clean_name = mod.get_clean_mod_name(mod_id, current_name)
					local new_name = mod.format_mod_name(mod_id, clean_name)

					if new_name ~= current_name then
						-- Сохраняем оригинал
						if not mod._original_names then mod._original_names = {} end
						if not mod._original_names[mod_id] then
							mod._original_names[mod_id] = clean_name
						end

						-- Обновляем
						setting.display_name = new_name

						if mod:get("debug_mode") then
							mod:info("Updated category header: %s -> %s", mod_id, new_name)
						end
					end
				end
			end
		end
	end

	return result
end

-- ============================================================================
-- КОМАНДЫ ДЛЯ ОТЛАДКИ И УПРАВЛЕНИЯ
-- ============================================================================

-- Команда для перезагрузки данных
-- mod:command("xsreload", "Reload category data", function()
	-- mod.initialize_data()
	-- mod._clean_names_cache = {} -- Очищаем кэш
	-- mod.update_all_mod_names_in_options()
	-- mod:notify("Category data reloaded")
-- end)

-- Команда для очистки кэша
-- mod:command("xsclear", "Clear name cache", function()
	-- mod._clean_names_cache = {}
	-- mod._original_names = {}
	-- mod:notify("Name cache cleared")
-- end)

-- ============================================================================
-- ИНИЦИАЛИЗАЦИЯ МОДА
-- ============================================================================

mod.on_all_mods_loaded = function()
	mod:info("=== zServo_Lexmechanicus Initialized ===")
	mod:info("Language: %s", get_current_language())
	mod:info("Categories loaded: %d", table.size(MOD_LIST))
	
	-- Инициализируем кэш
	mod._clean_names_cache = {}
	
	-- Обновляем названия модов
	if mod:get("enable_servo") then
		mod.update_all_mod_names_in_options()
	end
end

mod.on_enabled = function()
	mod:info("zServo_Lexmechanicus enabled")
	
	if mod:get("enable_servo") then
		mod.update_all_mod_names_in_options()
	end
end

mod.on_disabled = function()
	mod:info("zServo_Lexmechanicus disabled")
	
	-- Восстанавливаем оригинальные названия
	if dmf.options_widgets_data and mod._original_names then
		for mod_id, original_name in pairs(mod._original_names) do
			for _, mod_data in ipairs(dmf.options_widgets_data) do
				if mod_data[1] and mod_data[1].mod_name == mod_id then
					mod_data[1].readable_mod_name = original_name
					mod_data[1].title = original_name
					break
				end
			end
		end
	end
end

-- Хук на изменение настроек
mod.on_setting_changed = function(setting_id)
	if setting_id == "enable_servo" or 
	   setting_id == "show_category_prefix" or 
	   setting_id == "use_custom_names" or
	   setting_id == "language_override" then
		
		-- Очищаем кэш при изменении языка
		if setting_id == "language_override" then
			_current_language = nil
			mod._clean_names_cache = {}
		end
		
		if mod:get("enable_servo") then
			mod.update_all_mod_names_in_options()
			mod:info("Settings changed, mod names updated")
		end
	end
end

-- ============================================================================
-- УТИЛИТЫ
-- ============================================================================

-- Очистка памяти при перезагрузке
mod._clean_names_cache = {}
mod._original_names = {}
