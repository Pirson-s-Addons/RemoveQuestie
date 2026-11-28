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
L["CONFIRM_ABANDON_ALL"] = "ALLE Quests im Questlog abbrechen?\nDies kann nicht rückgängig gemacht werden."
L["CONFIRM_ABANDON_SELECTED"] = "%d ausgewählte Quest(s) abbrechen?\nDies kann nicht rückgängig gemacht werden."
L["SELECT_ZONE"] = "Zone wählen"
L["NO_ZONES"] = "Keine Quests zum Auswählen."
L["HELP"] = "Markiere Quests im Questlog und nutze die Leiste darunter: Auswählen und Abbrechen."
L["SELECT"] = "Auswählen"
L["ABANDON"] = "Abbrechen"
L["SELECT_TOOLTIP"] = "Alle Quests, keine oder die einer Zone markieren. Auch Quests verfolgen oder nicht mehr verfolgen, alle oder pro Zone."
L["TRACKING"] = "Verfolgung"
L["TRACK_ALL"] = "Alle verfolgen"
L["UNTRACK_ALL"] = "Keine verfolgen"
L["ABANDON_TOOLTIP"] = "Bricht die markierten Quests ab. Fragt vorher nach."
