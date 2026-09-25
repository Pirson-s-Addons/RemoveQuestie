local ADDON_NAME, ns = ...

-- ==========================================
-- NORSK (noNO)
-- ==========================================
local locale = GetLocale()
if locale ~= "noNO" then return end
local L = ns.L

L["ABANDON_ALL"] = "Forlat alle"
L["ABANDON_SELECTED"] = "Forlat valgte"
L["SELECT_ALL"] = "Velg alle"
L["UNSELECT_ALL"] = "Fjern alle valg"
L["ALL_ABANDONED"] = "Alle oppdrag er forlatt."
L["ABANDON_TEXT"] = "Du har forlatt: "
L["SELECTED_ABANDONED"] = "Valgte oppdrag er forlatt."
L["NO_SELECTED"] = "Ingen valgte oppdrag å forlate."
L["ERROR_QUESTID"] = "FEIL: questID nil i avkrysningsboksen"
L["ADDON_LOADED"] = "lastet i versjon"
