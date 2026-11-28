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
L["CONFIRM_ABANDON_ALL"] = "Opustit VŠECHNY úkoly v deníku?\nTuto akci nelze vrátit zpět."
L["CONFIRM_ABANDON_SELECTED"] = "Opustit vybrané úkoly (%d)?\nTuto akci nelze vrátit zpět."
L["SELECT_ZONE"] = "Vybrat zónu"
L["NO_ZONES"] = "Žádné úkoly k výběru."
L["HELP"] = "Označ úkoly v deníku a použij lištu pod ním: Vybrat a Opustit."
L["SELECT"] = "Vybrat"
L["ABANDON"] = "Opustit"
L["SELECT_TOOLTIP"] = "Označí všechny úkoly, žádný nebo úkoly zóny. Také sledovat nebo přestat sledovat úkoly, všechny nebo podle zóny."
L["TRACKING"] = "Sledování"
L["TRACK_ALL"] = "Sledovat vše"
L["UNTRACK_ALL"] = "Nesledovat nic"
L["ABANDON_TOOLTIP"] = "Opustí označené úkoly. Nejdřív se zeptá."
