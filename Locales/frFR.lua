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
L["CONFIRM_ABANDON_ALL"] = "Abandonner TOUTES les quêtes du journal ?\nCette action est irréversible."
L["CONFIRM_ABANDON_SELECTED"] = "Abandonner %d quête(s) sélectionnée(s) ?\nCette action est irréversible."
L["SELECT_ZONE"] = "Choisir une zone"
L["NO_ZONES"] = "Aucune quête à sélectionner."
L["HELP"] = "Cochez des quêtes dans le journal puis utilisez la barre dessous : Sélectionner et Abandonner."
L["SELECT"] = "Sélectionner"
L["ABANDON"] = "Abandonner"
L["SELECT_TOOLTIP"] = "Coche toutes les quêtes, aucune ou celles d'une zone. Permet aussi de suivre ou non les quêtes, toutes ou par zone."
L["TRACKING"] = "Suivi"
L["TRACK_ALL"] = "Tout suivre"
L["UNTRACK_ALL"] = "Ne plus rien suivre"
L["ABANDON_TOOLTIP"] = "Abandonne les quêtes cochées. Demande confirmation."
