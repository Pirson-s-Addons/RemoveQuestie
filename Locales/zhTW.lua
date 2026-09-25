local ADDON_NAME, ns = ...

-- ==========================================
-- 繁體中文 (zhTW)
-- ==========================================
local locale = GetLocale()
if locale ~= "zhTW" then return end
local L = ns.L

L["ABANDON_ALL"] = "放棄全部"
L["ABANDON_SELECTED"] = "放棄選擇"
L["SELECT_ALL"] = "全選"
L["UNSELECT_ALL"] = "取消全選"
L["ALL_ABANDONED"] = "所有任務已被放棄。"
L["ABANDON_TEXT"] = "你已放棄："
L["SELECTED_ABANDONED"] = "已放棄選中的任務。"
L["NO_SELECTED"] = "沒有選中的任務可供放棄。"
L["ERROR_QUESTID"] = "錯誤：checkbox 中的 questID 為 nil"
L["ADDON_LOADED"] = "在版本中載入"
