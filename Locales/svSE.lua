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
L["CONFIRM_ABANDON_ALL"] = "Överge ALLA uppdrag i uppdragsloggen?\nDetta kan inte ångras."
L["CONFIRM_ABANDON_SELECTED"] = "Överge %d valda uppdrag?\nDetta kan inte ångras."
L["SELECT_ZONE"] = "Välj zon"
L["NO_ZONES"] = "Inga uppdrag att välja."
L["HELP"] = "Markera uppdrag i loggen och använd fältet under: Markera och Överge."
L["SELECT"] = "Markera"
L["ABANDON"] = "Överge"
L["SELECT_TOOLTIP"] = "Markera alla uppdrag, inga eller de i en zon. Spåra eller sluta spåra uppdrag, alla eller per zon."
L["TRACKING"] = "Spårning"
L["TRACK_ALL"] = "Spåra alla"
L["UNTRACK_ALL"] = "Sluta spåra alla"
L["ABANDON_TOOLTIP"] = "Överger de markerade uppdragen. Frågar först."
