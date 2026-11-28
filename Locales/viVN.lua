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
L["HELP"] = "Đánh dấu nhiệm vụ trong nhật ký rồi dùng thanh bên dưới: Chọn và Hủy bỏ."
L["SELECT"] = "Chọn"
L["ABANDON"] = "Hủy bỏ"
L["SELECT_TOOLTIP"] = "Chọn tất cả nhiệm vụ, không chọn hoặc nhiệm vụ của một vùng. Cũng có thể theo dõi hoặc bỏ theo dõi nhiệm vụ, tất cả hoặc theo vùng."
L["TRACKING"] = "Theo dõi"
L["TRACK_ALL"] = "Theo dõi tất cả"
L["UNTRACK_ALL"] = "Bỏ theo dõi tất cả"
L["ABANDON_TOOLTIP"] = "Hủy bỏ các nhiệm vụ đã đánh dấu. Sẽ hỏi trước."
