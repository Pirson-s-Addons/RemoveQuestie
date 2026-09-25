local ADDON_NAME, ns = ...

-- ==========================================
-- POLSKI (plPL)
-- ==========================================
local locale = GetLocale()
if locale ~= "plPL" then return end
local L = ns.L

L["ABANDON_ALL"] = "Porzuć wszystkie"
L["ABANDON_SELECTED"] = "Porzuć zaznaczone"
L["SELECT_ALL"] = "Zaznacz wszystkie"
L["UNSELECT_ALL"] = "Odznacz wszystkie"
L["ALL_ABANDONED"] = "Wszystkie zadania zostały porzucone."
L["ABANDON_TEXT"] = "Porzucono: "
L["SELECTED_ABANDONED"] = "Zaznaczone zadania zostały porzucone."
L["NO_SELECTED"] = "Brak zaznaczonych zadań do porzucenia."
L["ERROR_QUESTID"] = "BŁĄD: questID nil w polu wyboru"
L["ADDON_LOADED"] = "załadowano w wersji"
