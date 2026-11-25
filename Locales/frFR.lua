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
L["ZONE_SELECTED"] = "%s : %d quête(s) sélectionnée(s)."
L["COMPACT_ON"] = "Boutons compacts activés."
L["COMPACT_OFF"] = "Boutons compacts désactivés."
L["HELP"] = "/rq compact - boutons et texte plus petits (pour les petites cartes comme Leatrix Maps)."
