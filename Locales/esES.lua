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
