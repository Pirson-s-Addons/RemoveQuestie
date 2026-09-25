local ADDON_NAME, ns = ...

-- ==========================================
-- РУССКИЙ (ruRU)
-- ==========================================
local locale = GetLocale()
if locale ~= "ruRU" then return end
local L = ns.L

L["ABANDON_ALL"] = "Отказаться от всех"
L["ABANDON_SELECTED"] = "Отказаться от выбранных"
L["SELECT_ALL"] = "Выбрать все"
L["UNSELECT_ALL"] = "Снять выбор со всех"
L["ALL_ABANDONED"] = "Все задания были отменены."
L["ABANDON_TEXT"] = "Вы отказались от: "
L["SELECTED_ABANDONED"] = "Выбранные задания отменены."
L["NO_SELECTED"] = "Нет выбранных заданий для отмены."
L["ERROR_QUESTID"] = "ОШИБКА: questID nil в флажке"
L["ADDON_LOADED"] = "загружен в версии"
