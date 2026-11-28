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
L["CONFIRM_ABANDON_ALL"] = "放弃任务日志中的所有任务？\n此操作无法撤销。"
L["CONFIRM_ABANDON_SELECTED"] = "放弃选中的%d个任务？\n此操作无法撤销。"
L["SELECT_ZONE"] = "选择区域"
L["NO_ZONES"] = "没有可选择的任务。"
L["HELP"] = "在任务日志中勾选任务，然后使用下方的栏：选择和放弃。"
L["SELECT"] = "选择"
L["ABANDON"] = "放弃"
L["SELECT_TOOLTIP"] = "选择全部任务、全不选或某个区域的任务。 也可追踪或取消追踪任务，全部或按区域。"
L["TRACKING"] = "追踪"
L["TRACK_ALL"] = "追踪全部"
L["UNTRACK_ALL"] = "取消追踪全部"
L["ABANDON_TOOLTIP"] = "放弃勾选的任务，会先确认。"
