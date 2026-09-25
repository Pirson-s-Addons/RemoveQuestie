local ADDON_NAME, ns = ...

-- ==========================================
-- ไทย (thTH)
-- ==========================================
local locale = GetLocale()
if locale ~= "thTH" then return end
local L = ns.L

L["ABANDON_ALL"] = "ละทิ้งทั้งหมด"
L["ABANDON_SELECTED"] = "ละทิ้งที่เลือก"
L["SELECT_ALL"] = "เลือกทั้งหมด"
L["UNSELECT_ALL"] = "ยกเลิกการเลือกทั้งหมด"
L["ALL_ABANDONED"] = "ละทิ้งเควสทั้งหมดแล้ว"
L["ABANDON_TEXT"] = "คุณละทิ้ง: "
L["SELECTED_ABANDONED"] = "ละทิ้งเควสที่เลือกแล้ว"
L["NO_SELECTED"] = "ไม่มีเควสที่เลือกให้ละทิ้ง"
L["ERROR_QUESTID"] = "ข้อผิดพลาด: questID เป็น nil ในช่องเลือก"
L["ADDON_LOADED"] = "โหลดแล้วในเวอร์ชัน"
