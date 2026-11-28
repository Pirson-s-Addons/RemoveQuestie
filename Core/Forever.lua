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
local RefreshBar = function() end -- se define con la barra, mas abajo

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
      -- Pegada a la casilla de seguimiento del juego, dentro de su cadena de anclajes:
      -- icono de tipo, icono de trama, "(Mazmorra)" y titulo se corren a la izquierda
      cb:SetPoint("RIGHT", button.Checkbox, "LEFT", -2, 0)
      if button.TagTexture then
        button.TagTexture:ClearAllPoints()
        button.TagTexture:SetPoint("RIGHT", cb, "LEFT", -4, 0)
      end
      cb:SetScript("OnClick", function(self)
        local questID = self:GetParent().questID
        if questID and questID ~= 0 then
          RemoveQuestie_Selections[questID] = self:GetChecked() or nil
          RefreshBar()
        else
          print(PREFIX .. L.ERROR_QUESTID)
        end
      end)
      button.RemoveQuestieCheck = cb
    end
    local cb = button.RemoveQuestieCheck
    cb:SetChecked(RemoveQuestie_Selections[button.questID] or false)
    cb:Show()
    -- El juego reancla en cada actualizacion el icono de trama (donde acaba el titulo)
    -- a su casilla, saltandose la nuestra: el titulo y el boton de Spoken la tapaban
    local story = button.StorylineTexture
    if story and button.Checkbox then
      local point, rel, relPoint, x, y = story:GetPoint(1)
      if rel == button.Checkbox then
        story:ClearAllPoints()
        story:SetPoint(point, cb, relPoint, x, y)
      end
    end
  end
  RefreshBar()
end

local function GetSelectedQuests()
  local selected = {}
  for _, quest in ipairs(GetAbandonableQuests()) do
    if RemoveQuestie_Selections[quest.questID] then
      selected[#selected + 1] = quest
    end
  end
  return selected
end

local function Confirm(key, text, getQuests, done)
  StaticPopupDialogs[key] = {
    text = text,
    button1 = YES,
    button2 = NO,
    OnAccept = function()
      local quests = getQuests()
      for _, quest in ipairs(quests) do
        Abandon(quest)
      end
      done(#quests)
    end,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    showAlert = true,
  }
end
-- Confirmacion antes de abandonar: un clic por error no tiene vuelta atras
Confirm("REMOVEQUESTIE_CONFIRM_SELECTED", L.CONFIRM_ABANDON_SELECTED, GetSelectedQuests, function(n)
  print(PREFIX .. (n > 0 and L.SELECTED_ABANDONED or L.NO_SELECTED))
end)
Confirm("REMOVEQUESTIE_CONFIRM_ALL", L.CONFIRM_ABANDON_ALL, GetAbandonableQuests, function(n)
  if n > 0 then print(PREFIX .. L.ALL_ABANDONED) end
end)

-- Misiones agrupadas por zona (las cabeceras del registro), en su orden. Solo las
-- abandonables, salvo con all (el seguimiento vale para cualquiera)
local function GetZones(all)
  local zones, order, zone = {}, {}, nil
  for i = 1, C_QuestLog.GetNumQuestLogEntries() do
    local info = C_QuestLog.GetInfo(i)
    if info and info.isHeader then
      zone = info.title
    elseif info and zone and not info.isHidden and info.questID and info.questID ~= 0
      and (all or C_QuestLog.CanAbandonQuest(info.questID)) then
      if not zones[zone] then zones[zone] = {}; order[#order + 1] = zone end
      table.insert(zones[zone], info.questID)
    end
  end
  return zones, order
end

-- Icono a la izquierda del texto, centrado en vertical; el texto se corre la mitad
-- para que icono + texto queden centrados en el boton
local function AddIcon(btn, file)
  local fs = btn:GetFontString()
  fs:ClearAllPoints()
  fs:SetPoint("CENTER", 9, 0)
  local icon = btn:CreateTexture(nil, "OVERLAY")
  icon:SetSize(14, 14)
  icon:SetTexture(file)
  icon:SetPoint("RIGHT", fs, "LEFT", -4, 0)
  return icon
end

local function Icon(path, size) return "|T" .. path .. ":" .. (size or 14) .. "|t " end

-- Seguimiento con las mismas llamadas que la casilla del juego; quitarlo respeta su
-- bloqueo de la experiencia de nuevo jugador
local function IsTracked(questID) return C_QuestLog.GetQuestWatchType(questID) ~= nil end
local function SetTracked(questID, on)
  if on then
    C_QuestLog.AddQuestWatch(questID)
  elseif not (QuestUtil and QuestUtil.CanRemoveQuestWatch) or QuestUtil.CanRemoveQuestWatch() then
    C_QuestLog.RemoveQuestWatch(questID)
  end
end
local function SetTrackedAll(on)
  local zones, order = GetZones(true)
  for _, name in ipairs(order) do
    for _, questID in ipairs(zones[name]) do SetTracked(questID, on) end
  end
end

-- Una casilla por zona: marcada si lo estan todas sus misiones; pulsarla marca o desmarca la zona
local function ZoneCheckboxes(parent, all, isOn, set)
  local zones, order = GetZones(all)
  if #order == 0 then
    parent:CreateButton(GRAY_FONT_COLOR_CODE .. L.NO_ZONES .. "|r")
  end
  for _, name in ipairs(order) do
    local ids = zones[name]
    local function AllOn()
      for _, questID in ipairs(ids) do
        if not isOn(questID) then return false end
      end
      return true
    end
    parent:CreateCheckbox(("%s |cff808080(%d)|r"):format(name, #ids), AllOn, function()
      local on = not AllOn()
      for _, questID in ipairs(ids) do set(questID, on) end
      UpdateCheckboxes()
    end)
  end
end

-- Menu de "Seleccionar": todas, ninguna, por zona (casillas), seguimiento y, aparte, abandonar todas
local function BuildSelectMenu(_, root)
  root:CreateTitle(Icon("Interface\\AddOns\\RemoveQuestie\\img\\logo_rq", 16) .. "Remove Questie")
  root:CreateButton(Icon("Interface\\RaidFrame\\ReadyCheck-Ready") .. L.SELECT_ALL, function()
    for _, quest in ipairs(GetAbandonableQuests()) do
      RemoveQuestie_Selections[quest.questID] = true
    end
    UpdateCheckboxes()
  end)
  root:CreateButton(Icon("Interface\\Buttons\\UI-CheckBox-Up") .. L.UNSELECT_ALL, function()
    wipe(RemoveQuestie_Selections)
    UpdateCheckboxes()
  end)
  ZoneCheckboxes(root:CreateButton(Icon("Interface\\Icons\\INV_Misc_Map_01") .. L.SELECT_ZONE), false,
    function(questID) return RemoveQuestie_Selections[questID] end,
    function(questID, on) RemoveQuestie_Selections[questID] = on or nil end)
  -- Seguimiento del juego (la casilla de la derecha de cada mision): todas o por zona
  local track = root:CreateButton(Icon("Interface\\Icons\\INV_Misc_Spyglass_03") .. L.TRACKING)
  track:CreateButton(L.TRACK_ALL, function() SetTrackedAll(true) end)
  track:CreateButton(L.UNTRACK_ALL, function() SetTrackedAll(false) end)
  track:CreateDivider()
  ZoneCheckboxes(track, true, IsTracked, SetTracked)
  root:CreateDivider()
  root:CreateButton(Icon("Interface\\DialogFrame\\UI-Dialog-Icon-AlertNew") .. "|cffff4040" .. L.ABANDON_ALL .. "|r", function()
    StaticPopup_Show("REMOVEQUESTIE_CONFIRM_ALL")
  end)
end

local function Tooltip(btn, text)
  btn:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
    GameTooltip:SetText(text, 1, 1, 1, 1, true)
    GameTooltip:Show()
  end)
  btn:SetScript("OnLeave", GameTooltip_Hide)
end

-- Barra fina pegada debajo del registro, de su mismo ancho (cabe en Leatrix Maps):
-- [Seleccionar v] [Abandonar (N)]. Abandonar se apaga sin nada marcado.
local function CreateBar()
  local bar = CreateFrame("Frame", "RemoveQuestie_Bar", QuestMapFrame)
  -- El BorderFrame del mapa es HIGH y ocupa toda la ventana: por debajo lo tapa
  bar:SetFrameStrata("DIALOG")
  bar:SetHeight(22)
  bar:SetPoint("TOPLEFT", QuestMapFrame, "BOTTOMLEFT", 2, -2)
  bar:SetPoint("TOPRIGHT", QuestMapFrame, "BOTTOMRIGHT", -2, -2)

  local select = CreateFrame("Button", "RemoveQuestie_SelectButton", bar, "UIPanelButtonTemplate")
  select:SetPoint("TOPLEFT")
  select:SetPoint("BOTTOMRIGHT", bar, "BOTTOM", -2, 0)
  select:SetText(L.SELECT)
  AddIcon(select, "Interface\\RaidFrame\\ReadyCheck-Ready")
  -- Flecha de desplegable en el borde derecho, como los menus del juego
  local arrow = select:CreateTexture(nil, "OVERLAY")
  arrow:SetPoint("RIGHT", -8, 0)
  arrow:SetSize(12, 12)
  arrow:SetTexture("Interface\\Buttons\\UI-MicroStream-Yellow")
  select:SetScript("OnClick", function(self) MenuUtil.CreateContextMenu(self, BuildSelectMenu) end)
  Tooltip(select, L.SELECT_TOOLTIP)

  local abandon = CreateFrame("Button", "RemoveQuestie_AbandonButton", bar, "UIPanelButtonTemplate")
  abandon:SetPoint("TOPLEFT", bar, "TOP", 2, 0)
  abandon:SetPoint("BOTTOMRIGHT")
  abandon:SetScript("OnClick", function()
    local count = #GetSelectedQuests()
    if count > 0 then StaticPopup_Show("REMOVEQUESTIE_CONFIRM_SELECTED", count) end
  end)
  abandon:SetText(L.ABANDON)
  local cross = AddIcon(abandon, "Interface\\RaidFrame\\ReadyCheck-NotReady")
  Tooltip(abandon, L.ABANDON_TOOLTIP)
  -- Apagado sin nada marcado; el tooltip sigue explicando para que sirve
  abandon:SetMotionScriptsWhileDisabled(true)

  RefreshBar = function()
    local count = #GetSelectedQuests()
    abandon:SetText(L.ABANDON .. " (" .. count .. ")")
    abandon:SetEnabled(count > 0)
    cross:SetDesaturated(count == 0)
    cross:SetAlpha(count > 0 and 1 or 0.5)
  end
  RefreshBar()
end

SLASH_REMOVEQUESTIE1 = "/rq"
SLASH_REMOVEQUESTIE2 = "/removequestie"
SlashCmdList.REMOVEQUESTIE = function()
  print(PREFIX .. L.HELP)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function()
  if not (QuestMapFrame and QuestScrollFrame and QuestScrollFrame.titleFramePool and MenuUtil) then return end

  hooksecurefunc("QuestLogQuests_Update", UpdateCheckboxes)
  CreateBar()

  local version = C_AddOns.GetAddOnMetadata("RemoveQuestie", "Version")
  print(PREFIX .. L.ADDON_LOADED .. " |cffffff00" .. (version or "?") .. "|r.")
end)
