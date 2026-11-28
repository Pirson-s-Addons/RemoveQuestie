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
L["HELP"] = "Marca misiones en el registro y usa la barra de debajo: Seleccionar y Abandonar."
L["SELECT"] = "Seleccionar"
L["ABANDON"] = "Abandonar"
L["SELECT_TOOLTIP"] = "Marca todas las misiones, ninguna o las de una zona. También seguir o dejar de seguir misiones, todas o por zona."
L["TRACKING"] = "Seguimiento"
L["TRACK_ALL"] = "Seguir todas"
L["UNTRACK_ALL"] = "Dejar de seguir todas"
L["ABANDON_TOOLTIP"] = "Abandona las misiones marcadas. Pregunta antes."
