local ADDON_NAME, ns = ...

-- ==========================================
-- TÜRKÇE (trTR)
-- ==========================================
local locale = GetLocale()
if locale ~= "trTR" then return end
local L = ns.L

L["ABANDON_ALL"] = "Hepsini bırak"
L["ABANDON_SELECTED"] = "Seçilenleri bırak"
L["SELECT_ALL"] = "Hepsini seç"
L["UNSELECT_ALL"] = "Seçimi kaldır"
L["ALL_ABANDONED"] = "Tüm görevler bırakıldı."
L["ABANDON_TEXT"] = "Bıraktığın görev: "
L["SELECTED_ABANDONED"] = "Seçilen görevler bırakıldı."
L["NO_SELECTED"] = "Bırakılacak seçili görev yok."
L["ERROR_QUESTID"] = "HATA: onay kutusunda questID nil"
L["ADDON_LOADED"] = "sürümüyle yüklendi"
