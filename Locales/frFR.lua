local ADDON_NAME, ns = ...

-- ==========================================
-- FRANÇAIS (frFR)
-- ==========================================
local locale = GetLocale()
if locale ~= "frFR" then return end
local L = ns.L

L["ABANDON_ALL"] = "Abandonner tout"
L["ABANDON_SELECTED"] = "Abandonner sélectionnées"
L["SELECT_ALL"] = "Tout sélectionner"
L["UNSELECT_ALL"] = "Tout désélectionner"
L["ALL_ABANDONED"] = "Toutes les quêtes ont été abandonnées."
L["ABANDON_TEXT"] = "Vous avez abandonné : "
L["SELECTED_ABANDONED"] = "Quêtes sélectionnées abandonnées."
L["NO_SELECTED"] = "Aucune quête sélectionnée à abandonner."
L["ERROR_QUESTID"] = "ERREUR : questID nil dans la case à cocher"
L["ADDON_LOADED"] = "chargé dans la version"
