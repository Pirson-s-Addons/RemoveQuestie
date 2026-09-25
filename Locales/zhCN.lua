local ADDON_NAME, ns = ...

-- ==========================================
-- 简体中文 (zhCN)
-- ==========================================
local locale = GetLocale()
if locale ~= "zhCN" then return end
local L = ns.L

L["ABANDON_ALL"] = "放弃全部"
L["ABANDON_SELECTED"] = "放弃选中"
L["SELECT_ALL"] = "全选"
L["UNSELECT_ALL"] = "取消全选"
L["ALL_ABANDONED"] = "所有任务已被放弃。"
L["ABANDON_TEXT"] = "你已放弃："
L["SELECTED_ABANDONED"] = "已放弃选中的任务。"
L["NO_SELECTED"] = "没有选中的任务可供放弃。"
L["ERROR_QUESTID"] = "错误：checkbox 中的 questID 为 nil"
L["ADDON_LOADED"] = "在版本中加载"
