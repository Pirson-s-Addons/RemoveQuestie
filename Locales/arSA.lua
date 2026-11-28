local ADDON_NAME, ns = ...

-- ==========================================
-- العربية (arSA)
-- ==========================================
local locale = GetLocale()
if locale ~= "arSA" then return end
local L = ns.L

L["ABANDON_ALL"] = "التخلي عن الكل"
L["ABANDON_SELECTED"] = "التخلي عن المحدد"
L["SELECT_ALL"] = "تحديد الكل"
L["UNSELECT_ALL"] = "إلغاء تحديد الكل"
L["ALL_ABANDONED"] = "تم التخلي عن جميع المهام."
L["ABANDON_TEXT"] = "لقد تخليت عن: "
L["SELECTED_ABANDONED"] = "تم التخلي عن المهام المحددة."
L["NO_SELECTED"] = "لا توجد مهام محددة للتخلي عنها."
L["ERROR_QUESTID"] = "خطأ: questID فارغ في مربع الاختيار"
L["ADDON_LOADED"] = "تم التحميل في الإصدار"
L["CONFIRM_ABANDON_ALL"] = "هل تريد التخلي عن جميع المهام في سجل المهام؟\nلا يمكن التراجع عن ذلك."
L["CONFIRM_ABANDON_SELECTED"] = "هل تريد التخلي عن المهام المحددة (%d)؟\nلا يمكن التراجع عن ذلك."
L["SELECT_ZONE"] = "اختر منطقة"
L["NO_ZONES"] = "لا توجد مهام لاختيارها."
L["HELP"] = "حدد المهام في السجل ثم استخدم الشريط أسفله: تحديد وتخلَّ."
L["SELECT"] = "تحديد"
L["ABANDON"] = "تخلَّ"
L["SELECT_TOOLTIP"] = "حدد كل المهام أو لا شيء أو مهام منطقة. يمكنك أيضًا تتبع المهام أو إلغاء تتبعها، كلها أو حسب المنطقة."
L["TRACKING"] = "التتبع"
L["TRACK_ALL"] = "تتبع الكل"
L["UNTRACK_ALL"] = "إلغاء تتبع الكل"
L["ABANDON_TOOLTIP"] = "يتخلى عن المهام المحددة. يسأل أولاً."
