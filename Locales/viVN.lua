local ADDON_NAME, ns = ...

-- ==========================================
-- TIẾNG VIỆT (viVN)
-- ==========================================
local locale = GetLocale()
if locale ~= "viVN" then return end
local L = ns.L

L["ABANDON_ALL"] = "Bỏ tất cả"
L["ABANDON_SELECTED"] = "Bỏ đã chọn"
L["SELECT_ALL"] = "Chọn tất cả"
L["UNSELECT_ALL"] = "Bỏ chọn tất cả"
L["ALL_ABANDONED"] = "Đã bỏ tất cả nhiệm vụ."
L["ABANDON_TEXT"] = "Bạn đã bỏ: "
L["SELECTED_ABANDONED"] = "Đã bỏ các nhiệm vụ đã chọn."
L["NO_SELECTED"] = "Không có nhiệm vụ nào được chọn để bỏ."
L["ERROR_QUESTID"] = "LỖI: questID nil trong ô chọn"
L["ADDON_LOADED"] = "đã tải phiên bản"
