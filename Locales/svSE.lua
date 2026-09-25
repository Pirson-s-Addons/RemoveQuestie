local ADDON_NAME, ns = ...

-- ==========================================
-- SVENSKA (svSE)
-- ==========================================
local locale = GetLocale()
if locale ~= "svSE" then return end
local L = ns.L

L["ABANDON_ALL"] = "Överge alla"
L["ABANDON_SELECTED"] = "Överge markerade"
L["SELECT_ALL"] = "Markera alla"
L["UNSELECT_ALL"] = "Avmarkera alla"
L["ALL_ABANDONED"] = "Alla uppdrag har övergetts."
L["ABANDON_TEXT"] = "Du har övergett: "
L["SELECTED_ABANDONED"] = "Markerade uppdrag har övergetts."
L["NO_SELECTED"] = "Inga markerade uppdrag att överge."
L["ERROR_QUESTID"] = "FEL: questID nil i kryssrutan"
L["ADDON_LOADED"] = "laddat i version"
