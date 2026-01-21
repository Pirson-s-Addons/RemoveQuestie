if WOW_PROJECT_ID ~= WOW_PROJECT_BURNING_CRUSADE_CLASSIC then
    return
end

RemoveQuestie_Selections = {}
local REMOVEQUESTIE_VERSION = "1.07"

-- Localización
local _, ns = ...
local L = ns.L

-- Función para crear botones
local function CreateRemoveQuestieButtons()
    if RemoveQuestie_AbandonAllButton then return end

    -- Botón: Abandonar todas
    local abandonAllBtn = CreateFrame("Button", "RemoveQuestie_AbandonAllButton", QuestLogFrame, "UIPanelButtonTemplate")
    abandonAllBtn:SetSize(130, 22)
    abandonAllBtn:SetText(L.ABANDON_ALL)
    abandonAllBtn:SetPoint("BOTTOMLEFT", QuestLogFrame, "BOTTOMLEFT", 210, 27)
    abandonAllBtn:SetScript("OnClick", function()
        local numEntries = GetNumQuestLogEntries()
        local abandonedAny = false
        for i = numEntries, 1, -1 do
            local title, _, _, isHeader, _, _, _, questID = GetQuestLogTitle(i)
            if not isHeader and questID and questID ~= 0 then
                SelectQuestLogEntry(i)
                SetAbandonQuest()
                AbandonQuest()
                RemoveQuestie_Selections[questID] = nil
                if title then
                    print("|cffffff00[|r|cffd597ffRemoveQuestie|r|cffffff00]|r " .. L.ABANDON_TEXT .. "|cffffff00" .. title .. "|r")
                end
                abandonedAny = true
            end
        end
        if abandonedAny then
            print("|cffffff00[|r|cffd597ffRemoveQuestie|r|cffffff00]|r " .. L.ALL_ABANDONED)
        end
    end)

    -- Botón: Abandonar seleccionadas
    RemoveQuestie_AbandonSelectedButton = CreateFrame("Button", "RemoveQuestie_AbandonSelectedButton", QuestLogFrame, "UIPanelButtonTemplate")
    RemoveQuestie_AbandonSelectedButton:SetSize(180, 22)
    RemoveQuestie_AbandonSelectedButton:SetText(L.ABANDON_SELECTED)
    RemoveQuestie_AbandonSelectedButton:SetPoint("BOTTOMLEFT", QuestLogFrame, "BOTTOMLEFT", 20, 27)
    RemoveQuestie_AbandonSelectedButton:SetScript("OnClick", function()
        local questIDToIndex = {}
        local numEntries = GetNumQuestLogEntries()

        for i = 1, numEntries do
            local _, _, _, isHeader, _, _, _, questID = GetQuestLogTitle(i)
            if not isHeader and questID then
                questIDToIndex[questID] = i
            end
        end

        local hasSelected = false
        for questID, _ in pairs(RemoveQuestie_Selections) do
            local index = questIDToIndex[questID]
            if index then
                local title = GetQuestLogTitle(index)
                SelectQuestLogEntry(index)
                SetAbandonQuest()
                AbandonQuest()
                RemoveQuestie_Selections[questID] = nil
                hasSelected = true
                if title then
                    print("|cffffff00[|r|cffd597ffRemoveQuestie|r|cffffff00]|r " .. L.ABANDON_TEXT .. "|cffffff00" .. title .. "|r")
                end
            end
        end

        if hasSelected then
            print("|cffffff00[|r|cffd597ffRemoveQuestie|r|cffffff00]|r " .. L.SELECTED_ABANDONED)
        else
            print("|cffffff00[|r|cffd597ffRemoveQuestie|r|cffffff00]|r " .. L.NO_SELECTED)
        end
    end)

    -- Botón: Seleccionar todas
    local selectAllBtn = CreateFrame("Button", "RemoveQuestie_SelectAllButton", QuestLogFrame, "UIPanelButtonTemplate")
    selectAllBtn:SetSize(130, 22)
    selectAllBtn:SetText(L.SELECT_ALL)
    selectAllBtn:SetPoint("TOPLEFT", QuestLogFrame, "TOPLEFT", 57, 10)
    selectAllBtn:SetScript("OnClick", function()
        local numEntries = GetNumQuestLogEntries()
        for i = 1, numEntries do
            local _, _, _, isHeader, _, _, _, questID = GetQuestLogTitle(i)
            if not isHeader and questID and questID ~= 0 then
                RemoveQuestie_Selections[questID] = true
            end
        end
        QuestLog_Update()
    end)

    -- Botón: Deseleccionar todas
    local unselectAllBtn = CreateFrame("Button", "RemoveQuestie_UnselectAllButton", QuestLogFrame, "UIPanelButtonTemplate")
    unselectAllBtn:SetSize(150, 22)
    unselectAllBtn:SetText(L.UNSELECT_ALL)
    unselectAllBtn:SetPoint("TOPLEFT", QuestLogFrame, "TOPLEFT", 190, 10)
    unselectAllBtn:SetScript("OnClick", function()
        for k in pairs(RemoveQuestie_Selections) do
            RemoveQuestie_Selections[k] = nil
        end
        QuestLog_Update()
    end)
end

-- Hook de los checkboxes
local MAX_QUESTLOG_BUTTONS = 25
local function HookQuestLogCheckboxes()
    for i = 1, MAX_QUESTLOG_BUTTONS do
        local button = _G["QuestLogTitle"..i]
        if button and button:IsShown() then
            local questIndex = button:GetID()
            if questIndex then
                local _, _, _, isHeader, _, _, _, questID = GetQuestLogTitle(questIndex)

                if not isHeader and questID and questID ~= 0 then
                    if not button.checkbox then
                        local cb = CreateFrame("CheckButton", nil, button, "UICheckButtonTemplate")
                        cb:SetSize(18, 18)
                        cb:SetPoint("LEFT", button, "LEFT", 5, 0)
                        cb:SetScript("OnClick", function(self)
                            local index = self:GetParent():GetID()
                            local _, _, _, _, _, _, _, qid = GetQuestLogTitle(index)
                            if qid then
                                RemoveQuestie_Selections[qid] = self:GetChecked() or nil
                            end
                        end)
                        button.checkbox = cb
                    end

                    button.checkbox:SetChecked(RemoveQuestie_Selections[questID] or false)
                    button.checkbox:Show()
                elseif button.checkbox then
                    button.checkbox:Hide()
                end
            end
        end
    end
end

-- Inicialización
function RemoveQuestie_OnLoad()
    hooksecurefunc("QuestLog_Update", HookQuestLogCheckboxes)
    CreateRemoveQuestieButtons()

    if not RemoveQuestie_Loaded then
        RemoveQuestie_Loaded = true
        local version = REMOVEQUESTIE_VERSION
        print("|cffffff00[|r|cffd597ffRemoveQuestie|r|cffffff00]|r " .. L.ADDON_LOADED .. " |cffffff00" .. version .. "|r.")
    end
end

-- Eventos
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("QUEST_LOG_UPDATE")

frame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        RemoveQuestie_OnLoad()
    elseif event == "QUEST_LOG_UPDATE" then
        HookQuestLogCheckboxes()
    end
end)