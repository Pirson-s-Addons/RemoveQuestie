local ADDON_NAME, ns = ...

-- ==========================================
-- ITALIANO (itIT)
-- ==========================================
local locale = GetLocale()
if locale ~= "itIT" then return end
local L = ns.L

L["ABANDON_ALL"] = "Abbandona Tutto"
L["ABANDON_SELECTED"] = "Abbandona Selezionate"
L["SELECT_ALL"] = "Seleziona Tutto"
L["UNSELECT_ALL"] = "Deseleziona Tutto"
L["ALL_ABANDONED"] = "Tutte le missioni sono state abbandonate."
L["ABANDON_TEXT"] = "Hai abbandonato: "
L["SELECTED_ABANDONED"] = "Missioni selezionate abbandonate."
L["NO_SELECTED"] = "Nessuna missione selezionata da abbandonare."
L["ERROR_QUESTID"] = "ERRORE: questID nil nella casella di controllo"
L["ADDON_LOADED"] = "caricato nella versione"
