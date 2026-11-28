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
L["CONFIRM_ABANDON_ALL"] = "Görev kaydındaki TÜM görevler bırakılsın mı?\nBu işlem geri alınamaz."
L["CONFIRM_ABANDON_SELECTED"] = "Seçili %d görev bırakılsın mı?\nBu işlem geri alınamaz."
L["SELECT_ZONE"] = "Bölge seç"
L["NO_ZONES"] = "Seçilecek görev yok."
L["HELP"] = "Günlükte görevleri işaretleyin ve altındaki çubuğu kullanın: Seç ve Bırak."
L["SELECT"] = "Seç"
L["ABANDON"] = "Bırak"
L["SELECT_TOOLTIP"] = "Tüm görevleri, hiçbirini veya bir bölgenin görevlerini seç. Görevleri takip etme veya bırakma da var, hepsi ya da bölgeye göre."
L["TRACKING"] = "Takip"
L["TRACK_ALL"] = "Hepsini takip et"
L["UNTRACK_ALL"] = "Hiçbirini takip etme"
L["ABANDON_TOOLTIP"] = "İşaretli görevleri bırakır. Önce sorar."
