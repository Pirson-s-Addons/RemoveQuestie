local ADDON_NAME, ns = ...

-- ==========================================
-- हिन्दी (hiIN)
-- ==========================================
local locale = GetLocale()
if locale ~= "hiIN" then return end
local L = ns.L

L["ABANDON_ALL"] = "सभी छोड़ें"
L["ABANDON_SELECTED"] = "चुनी हुई छोड़ें"
L["SELECT_ALL"] = "सभी चुनें"
L["UNSELECT_ALL"] = "सभी का चयन हटाएँ"
L["ALL_ABANDONED"] = "सभी क्वेस्ट छोड़ दी गई हैं।"
L["ABANDON_TEXT"] = "आपने छोड़ दिया: "
L["SELECTED_ABANDONED"] = "चुनी हुई क्वेस्ट छोड़ दी गई हैं।"
L["NO_SELECTED"] = "छोड़ने के लिए कोई चुनी हुई क्वेस्ट नहीं।"
L["ERROR_QUESTID"] = "त्रुटि: चेकबॉक्स में questID nil है"
L["ADDON_LOADED"] = "संस्करण में लोड हुआ"
