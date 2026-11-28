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
L["CONFIRM_ABANDON_ALL"] = "クエストログのすべてのクエストを放棄しますか？\nこの操作は元に戻せません。"
L["CONFIRM_ABANDON_SELECTED"] = "選択した%d件のクエストを放棄しますか？\nこの操作は元に戻せません。"
L["SELECT_ZONE"] = "ゾーン選択"
L["NO_ZONES"] = "選択できるクエストがありません。"
L["HELP"] = "クエストログでクエストにチェックを入れ、下のバーの「選択」と「放棄」を使ってください。"
L["SELECT"] = "選択"
L["ABANDON"] = "放棄"
L["SELECT_TOOLTIP"] = "すべてのクエスト、なし、またはゾーンのクエストを選択します。 クエストの追跡・追跡解除も、すべてまたはゾーンごとにできます。"
L["TRACKING"] = "追跡"
L["TRACK_ALL"] = "すべて追跡"
L["UNTRACK_ALL"] = "すべて追跡解除"
L["ABANDON_TOOLTIP"] = "チェックしたクエストを放棄します。先に確認します。"
