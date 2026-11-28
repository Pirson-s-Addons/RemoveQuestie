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
L["CONFIRM_ABANDON_ALL"] = "放棄任務日誌中的所有任務？\n此動作無法復原。"
L["CONFIRM_ABANDON_SELECTED"] = "放棄選取的%d個任務？\n此動作無法復原。"
L["SELECT_ZONE"] = "選擇區域"
L["NO_ZONES"] = "沒有可選擇的任務。"
L["HELP"] = "在任務日誌中勾選任務，然後使用下方的列：選擇和放棄。"
L["SELECT"] = "選擇"
L["ABANDON"] = "放棄"
L["SELECT_TOOLTIP"] = "選擇全部任務、全不選或某個區域的任務。 也可追蹤或取消追蹤任務，全部或依區域。"
L["TRACKING"] = "追蹤"
L["TRACK_ALL"] = "追蹤全部"
L["UNTRACK_ALL"] = "取消追蹤全部"
L["ABANDON_TOOLTIP"] = "放棄勾選的任務，會先確認。"
