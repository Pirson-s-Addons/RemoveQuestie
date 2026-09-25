-- World of Warcraft: Forever (1.60.1). Su game type (camelot) es de la familia
-- mainline: no hay QuestLogFrame, el registro de misiones es el QuestMapFrame
-- de Retail (dentro del mapa del mundo) y todo va por C_QuestLog.
-- Contrastado con Gethe/wow-ui-source, rama "forever".
--
-- En esta familia WOW_PROJECT_ID lo pone el cliente y el valor de Forever no
-- esta en el Lua, asi que el guard va por descarte: TBC y MoP tienen su propio
-- Source_*, y sin el registro de misiones moderno no hay nada que enganchar.
if WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC
  or WOW_PROJECT_ID == WOW_PROJECT_MISTS_CLASSIC
  or not (C_QuestLog and C_QuestLog.GetInfo) then
  return
end

RemoveQuestie_Selections = {}

local _, ns = ...
local L = ns.L
local PREFIX = "|cffffff00[|r|cffd597ffRemoveQuestie|r|cffffff00]|r "

-- Misiones que se pueden abandonar, en el orden del registro: { questID, title }
local function GetAbandonableQuests()
  local quests = {}
  for i = 1, C_QuestLog.GetNumQuestLogEntries() do
    local info = C_QuestLog.GetInfo(i)
    if info and not info.isHeader and not info.isHidden and info.questID and info.questID ~= 0
      and C_QuestLog.CanAbandonQuest(info.questID) then
      quests[#quests + 1] = { questID = info.questID, title = info.title }
    end
  end
  return quests
end

-- Las mismas llamadas que hace Blizzard al aceptar el popup de abandonar mision
local function Abandon(quest)
  C_QuestLog.SetSelectedQuest(quest.questID)
  C_QuestLog.SetAbandonQuest()
  C_QuestLog.AbandonQuest()
  RemoveQuestie_Selections[quest.questID] = nil
  if quest.title then
    print(PREFIX .. L.ABANDON_TEXT .. "|cffffff00" .. quest.title .. "|r")
  end
end

-- Un checkbox por titulo de mision. Los titulos salen de un pool de frames, asi
-- que el mismo boton se reutiliza para otra mision: el estado se relee siempre.
local function UpdateCheckboxes()
  for button in QuestScrollFrame.titleFramePool:EnumerateActive() do
    if not button.RemoveQuestieCheck then
      local cb = CreateFrame("CheckButton", nil, button, "UICheckButtonTemplate")
      cb:SetSize(18, 18)
      -- A la izquierda del checkbox de seguimiento y del icono de tipo de mision
      cb:SetPoint("RIGHT", button.Checkbox, "LEFT", -24, 0)
      cb:SetScript("OnClick", function(self)
        local questID = self:GetParent().questID
        if questID and questID ~= 0 then
          RemoveQuestie_Selections[questID] = self:GetChecked() or nil
        else
          print(PREFIX .. L.ERROR_QUESTID)
        end
      end)
      button.RemoveQuestieCheck = cb
    end
    button.RemoveQuestieCheck:SetChecked(RemoveQuestie_Selections[button.questID] or false)
    button.RemoveQuestieCheck:Show()
  end
end

local function CreateButton(name, text, width, onClick)
  local btn = CreateFrame("Button", name, QuestMapFrame, "UIPanelButtonTemplate")
  btn:SetSize(width, 22)
  btn:SetText(text)
  btn:SetScript("OnClick", onClick)
  return btn
end

-- Cuatro botones en dos filas debajo del registro, como la version de MoP, que
-- tambien los saca fuera de su marco.
local function CreateRemoveQuestieButtons()
  if RemoveQuestie_AbandonAllButton then return end

  local selectAll = CreateButton("RemoveQuestie_SelectAllButton", L.SELECT_ALL, 160, function()
    for _, quest in ipairs(GetAbandonableQuests()) do
      RemoveQuestie_Selections[quest.questID] = true
    end
    UpdateCheckboxes()
  end)
  selectAll:SetPoint("TOPLEFT", QuestMapFrame, "BOTTOMLEFT", 4, -4)

  local unselectAll = CreateButton("RemoveQuestie_UnselectAllButton", L.UNSELECT_ALL, 160, function()
    wipe(RemoveQuestie_Selections)
    UpdateCheckboxes()
  end)
  unselectAll:SetPoint("LEFT", selectAll, "RIGHT", 4, 0)

  local abandonSelected = CreateButton("RemoveQuestie_AbandonSelectedButton", L.ABANDON_SELECTED, 160, function()
    local any = false
    for _, quest in ipairs(GetAbandonableQuests()) do
      if RemoveQuestie_Selections[quest.questID] then
        Abandon(quest)
        any = true
      end
    end
    print(PREFIX .. (any and L.SELECTED_ABANDONED or L.NO_SELECTED))
  end)
  abandonSelected:SetPoint("TOPLEFT", selectAll, "BOTTOMLEFT", 0, -2)

  local abandonAll = CreateButton("RemoveQuestie_AbandonAllButton", L.ABANDON_ALL, 160, function()
    local quests = GetAbandonableQuests()
    for _, quest in ipairs(quests) do
      Abandon(quest)
    end
    if #quests > 0 then
      print(PREFIX .. L.ALL_ABANDONED)
    end
  end)
  abandonAll:SetPoint("LEFT", abandonSelected, "RIGHT", 4, 0)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function()
  if not (QuestMapFrame and QuestScrollFrame and QuestScrollFrame.titleFramePool) then return end

  hooksecurefunc("QuestLogQuests_Update", UpdateCheckboxes)
  CreateRemoveQuestieButtons()

  local version = C_AddOns.GetAddOnMetadata("RemoveQuestie", "Version")
  print(PREFIX .. L.ADDON_LOADED .. " |cffffff00" .. (version or "?") .. "|r.")
end)
