local ADDON_NAME, ns = ...

-- ==========================================
-- DEUTSCH (deDE)
-- ==========================================
local locale = GetLocale()
if locale ~= "deDE" then return end
local L = ns.L

L["ABANDON_ALL"] = "Alle aufgeben"
L["ABANDON_SELECTED"] = "Ausgewählte aufgeben"
L["SELECT_ALL"] = "Alle auswählen"
L["UNSELECT_ALL"] = "Alle abwählen"
L["ALL_ABANDONED"] = "Alle Quests wurden aufgegeben."
L["ABANDON_TEXT"] = "Du hast aufgegeben: "
L["SELECTED_ABANDONED"] = "Ausgewählte Quests wurden aufgegeben."
L["NO_SELECTED"] = "Keine ausgewählten Quests zum Aufgeben."
L["ERROR_QUESTID"] = "FEHLER: questID nil im Kontrollkästchen"
L["ADDON_LOADED"] = "geladen in Version"
