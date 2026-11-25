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
L["CONFIRM_ABANDON_ALL"] = "Bỏ TẤT CẢ nhiệm vụ trong nhật ký nhiệm vụ?\nKhông thể hoàn tác."
L["CONFIRM_ABANDON_SELECTED"] = "Bỏ %d nhiệm vụ đã chọn?\nKhông thể hoàn tác."
L["SELECT_ZONE"] = "Chọn khu vực"
L["NO_ZONES"] = "Không có nhiệm vụ để chọn."
L["ZONE_SELECTED"] = "%s: đã chọn %d nhiệm vụ."
L["COMPACT_ON"] = "Nút thu gọn: bật."
L["COMPACT_OFF"] = "Nút thu gọn: tắt."
L["HELP"] = "/rq compact - nút và chữ nhỏ hơn (cho bản đồ nhỏ như Leatrix Maps)."
