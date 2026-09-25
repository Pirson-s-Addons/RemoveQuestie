local ADDON_NAME, ns = ...

-- ==========================================
-- 한국어 (koKR)
-- ==========================================
local locale = GetLocale()
if locale ~= "koKR" then return end
local L = ns.L

L["ABANDON_ALL"] = "모두 포기"
L["ABANDON_SELECTED"] = "선택한 퀘스트 포기"
L["SELECT_ALL"] = "모두 선택"
L["UNSELECT_ALL"] = "모두 선택 해제"
L["ALL_ABANDONED"] = "모든 퀘스트가 포기되었습니다."
L["ABANDON_TEXT"] = "포기한 퀘스트: "
L["SELECTED_ABANDONED"] = "선택한 퀘스트가 포기되었습니다."
L["NO_SELECTED"] = "포기할 선택된 퀘스트가 없습니다."
L["ERROR_QUESTID"] = "오류: checkbox의 questID가 nil입니다."
L["ADDON_LOADED"] = "버전에서 로드됨"
