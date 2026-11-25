local ADDON_NAME, ns = ...

-- ==========================================
-- ESPAÑOL (esES / esMX)
-- ==========================================
local locale = GetLocale()
if locale ~= "esES" and locale ~= "esMX" then return end
local L = ns.L

L["ABANDON_ALL"] = "Abandonar todas"
L["ABANDON_SELECTED"] = "Abandonar seleccionadas"
L["SELECT_ALL"] = "Seleccionar todas"
L["UNSELECT_ALL"] = "Deseleccionar todas"
L["ALL_ABANDONED"] = "Todas las misiones han sido abandonadas."
L["ABANDON_TEXT"] = "Has abandonado: "
L["SELECTED_ABANDONED"] = "Misiones seleccionadas abandonadas."
L["NO_SELECTED"] = "No hay misiones seleccionadas para abandonar."
L["ERROR_QUESTID"] = "ERROR: questID nil en checkbox"
L["ADDON_LOADED"] = "cargado en la versión"
L["CONFIRM_ABANDON_ALL"] = "¿Abandonar TODAS las misiones del registro?\nNo se puede deshacer."
L["CONFIRM_ABANDON_SELECTED"] = "¿Abandonar %d misión(es) seleccionada(s)?\nNo se puede deshacer."
L["SELECT_ZONE"] = "Seleccionar zona"
L["NO_ZONES"] = "No hay misiones que seleccionar."
L["ZONE_SELECTED"] = "%s: %d misión(es) seleccionada(s)."
L["COMPACT_ON"] = "Botones compactos activados."
L["COMPACT_OFF"] = "Botones compactos desactivados."
L["HELP"] = "/rq compact - botones y texto más pequeños (para mapas reducidos como Leatrix Maps)."
