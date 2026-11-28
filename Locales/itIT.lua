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
L["CONFIRM_ABANDON_ALL"] = "Abbandonare TUTTE le missioni del registro?\nL'azione non può essere annullata."
L["CONFIRM_ABANDON_SELECTED"] = "Abbandonare %d missione/i selezionata/e?\nL'azione non può essere annullata."
L["SELECT_ZONE"] = "Seleziona zona"
L["NO_ZONES"] = "Nessuna missione da selezionare."
L["HELP"] = "Spunta le missioni nel registro e usa la barra sotto: Seleziona e Abbandona."
L["SELECT"] = "Seleziona"
L["ABANDON"] = "Abbandona"
L["SELECT_TOOLTIP"] = "Spunta tutte le missioni, nessuna o quelle di una zona. Anche monitorare o no le missioni, tutte o per zona."
L["TRACKING"] = "Monitoraggio"
L["TRACK_ALL"] = "Monitora tutte"
L["UNTRACK_ALL"] = "Non monitorare nessuna"
L["ABANDON_TOOLTIP"] = "Abbandona le missioni spuntate. Chiede conferma."
