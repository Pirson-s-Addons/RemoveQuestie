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
L["CONFIRM_ABANDON_ALL"] = "Porzucić WSZYSTKIE zadania z dziennika?\nTej operacji nie można cofnąć."
L["CONFIRM_ABANDON_SELECTED"] = "Porzucić wybrane zadania (%d)?\nTej operacji nie można cofnąć."
L["SELECT_ZONE"] = "Wybierz strefę"
L["NO_ZONES"] = "Brak zadań do zaznaczenia."
L["HELP"] = "Zaznacz zadania w dzienniku i użyj paska pod nim: Zaznacz i Porzuć."
L["SELECT"] = "Zaznacz"
L["ABANDON"] = "Porzuć"
L["SELECT_TOOLTIP"] = "Zaznacz wszystkie zadania, żadne lub z danej strefy. Także śledzenie zadań lub jego wyłączenie, wszystkich lub według strefy."
L["TRACKING"] = "Śledzenie"
L["TRACK_ALL"] = "Śledź wszystkie"
L["UNTRACK_ALL"] = "Nie śledź żadnego"
L["ABANDON_TOOLTIP"] = "Porzuca zaznaczone zadania. Najpierw pyta."
