local ADDON_NAME, ns = ...

-- ==========================================
-- ČEŠTINA (csCZ)
-- ==========================================
local locale = GetLocale()
if locale ~= "csCZ" then return end
local L = ns.L

L["ABANDON_ALL"] = "Opustit vše"
L["ABANDON_SELECTED"] = "Opustit vybrané"
L["SELECT_ALL"] = "Vybrat vše"
L["UNSELECT_ALL"] = "Zrušit výběr"
L["ALL_ABANDONED"] = "Všechny úkoly byly opuštěny."
L["ABANDON_TEXT"] = "Opustil jsi: "
L["SELECTED_ABANDONED"] = "Vybrané úkoly byly opuštěny."
L["NO_SELECTED"] = "Žádné vybrané úkoly k opuštění."
L["ERROR_QUESTID"] = "CHYBA: questID nil v zaškrtávacím poli"
L["ADDON_LOADED"] = "načteno ve verzi"
