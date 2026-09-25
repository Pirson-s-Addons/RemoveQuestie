local ADDON_NAME, ns = ...

-- ==========================================
-- IDIOMA POR DEFECTO (enUS / enGB)
-- ==========================================
-- Este fichero define TODAS las claves. Los demas Locales/<idioma>.lua se
-- cargan despues y sobrescriben las suyas; lo que falte se queda en ingles.

local L = ns.L or {}
ns.L = L

L["ABANDON_ALL"] = "Abandon All"
L["ABANDON_SELECTED"] = "Abandon Selected"
L["SELECT_ALL"] = "Select All"
L["UNSELECT_ALL"] = "Unselect All"
L["ALL_ABANDONED"] = "All quests have been abandoned."
L["ABANDON_TEXT"] = "You have abandoned: "
L["SELECTED_ABANDONED"] = "Selected quests have been abandoned."
L["NO_SELECTED"] = "No selected quests to abandon."
L["ERROR_QUESTID"] = "ERROR: questID nil in checkbox"
L["ADDON_LOADED"] = "loaded in version"
