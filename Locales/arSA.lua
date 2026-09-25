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
