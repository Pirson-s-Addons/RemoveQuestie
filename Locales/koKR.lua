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
L["CONFIRM_ABANDON_ALL"] = "퀘스트 목록의 모든 퀘스트를 포기하시겠습니까?\n되돌릴 수 없습니다."
L["CONFIRM_ABANDON_SELECTED"] = "선택한 퀘스트 %d개를 포기하시겠습니까?\n되돌릴 수 없습니다."
L["SELECT_ZONE"] = "지역 선택"
L["NO_ZONES"] = "선택할 퀘스트가 없습니다."
L["HELP"] = "퀘스트 목록에서 퀘스트를 선택한 뒤 아래 막대의 선택과 포기를 사용하세요."
L["SELECT"] = "선택"
L["ABANDON"] = "포기"
L["SELECT_TOOLTIP"] = "모든 퀘스트, 없음 또는 지역별 퀘스트를 선택합니다. 퀘스트 추적 및 추적 해제도 가능합니다(전체 또는 지역별)."
L["TRACKING"] = "추적"
L["TRACK_ALL"] = "모두 추적"
L["UNTRACK_ALL"] = "모두 추적 해제"
L["ABANDON_TOOLTIP"] = "선택한 퀘스트를 포기합니다. 먼저 확인합니다."
