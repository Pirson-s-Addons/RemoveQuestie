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
L["CONFIRM_ABANDON_ALL"] = "Forlate ALLE oppdrag i oppdragsloggen?\nDette kan ikke angres."
L["CONFIRM_ABANDON_SELECTED"] = "Forlate %d valgte oppdrag?\nDette kan ikke angres."
L["SELECT_ZONE"] = "Velg sone"
L["NO_ZONES"] = "Ingen oppdrag å velge."
L["HELP"] = "Merk oppdrag i loggen og bruk linjen under: Merk og Forlat."
L["SELECT"] = "Merk"
L["ABANDON"] = "Forlat"
L["SELECT_TOOLTIP"] = "Merk alle oppdrag, ingen eller de i en sone. Spor eller slutt å spore oppdrag, alle eller per sone."
L["TRACKING"] = "Sporing"
L["TRACK_ALL"] = "Spor alle"
L["UNTRACK_ALL"] = "Slutt å spore alle"
L["ABANDON_TOOLTIP"] = "Forlater de merkede oppdragene. Spør først."
