local ADDON_NAME, ns = ...

-- ==========================================
-- 日本語 (jaJP)
-- ==========================================
local locale = GetLocale()
if locale ~= "jaJP" then return end
local L = ns.L

L["ABANDON_ALL"] = "すべて放棄"
L["ABANDON_SELECTED"] = "選択したクエストを放棄"
L["SELECT_ALL"] = "すべて選択"
L["UNSELECT_ALL"] = "すべて選択解除"
L["ALL_ABANDONED"] = "すべてのクエストが放棄されました。"
L["ABANDON_TEXT"] = "放棄したクエスト: "
L["SELECTED_ABANDONED"] = "選択したクエストを放棄しました。"
L["NO_SELECTED"] = "放棄する選択されたクエストがありません。"
L["ERROR_QUESTID"] = "エラー: checkboxのquestIDがnilです。"
L["ADDON_LOADED"] = "バージョンでロードされました"
