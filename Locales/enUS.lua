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
L["CONFIRM_ABANDON_ALL"] = "Abandon ALL quests in your quest log?\nThis cannot be undone."
L["CONFIRM_ABANDON_SELECTED"] = "Abandon %d selected quest(s)?\nThis cannot be undone."
L["SELECT_ZONE"] = "Select Zone"
L["NO_ZONES"] = "No quests to select."
L["HELP"] = "Check quests in the quest log, then use the bar below it: Select and Abandon."
L["SELECT"] = "Select"
L["ABANDON"] = "Abandon"
L["SELECT_TOOLTIP"] = "Select all quests, none, or those of a zone. Also track or untrack quests, all or by zone."
L["TRACKING"] = "Tracking"
L["TRACK_ALL"] = "Track All"
L["UNTRACK_ALL"] = "Untrack All"
L["ABANDON_TOOLTIP"] = "Abandon the checked quests. Asks first."
