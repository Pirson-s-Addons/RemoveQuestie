local ADDON_NAME, ns = ...

-- ==========================================
-- PORTUGUÊS (ptBR)
-- ==========================================
local locale = GetLocale()
if locale ~= "ptBR" then return end
local L = ns.L

L["ABANDON_ALL"] = "Abandonar Todos"
L["ABANDON_SELECTED"] = "Abandonar Selecionados"
L["SELECT_ALL"] = "Selecionar Todos"
L["UNSELECT_ALL"] = "Desmarcar Todos"
L["ALL_ABANDONED"] = "Todas as missões foram abandonadas."
L["ABANDON_TEXT"] = "Você abandonou: "
L["SELECTED_ABANDONED"] = "Missões selecionadas abandonadas."
L["NO_SELECTED"] = "Nenhuma missão selecionada para abandonar."
L["ERROR_QUESTID"] = "ERRO: questID nil na caixa de seleção"
L["ADDON_LOADED"] = "carregado na versão"
L["CONFIRM_ABANDON_ALL"] = "Abandonar TODAS as missões do registro?\nIsso não pode ser desfeito."
L["CONFIRM_ABANDON_SELECTED"] = "Abandonar %d missão(ões) selecionada(s)?\nIsso não pode ser desfeito."
L["SELECT_ZONE"] = "Selecionar zona"
L["NO_ZONES"] = "Nenhuma missão para selecionar."
L["HELP"] = "Marque missões no registro e use a barra abaixo: Selecionar e Abandonar."
L["SELECT"] = "Selecionar"
L["ABANDON"] = "Abandonar"
L["SELECT_TOOLTIP"] = "Marca todas as missões, nenhuma ou as de uma zona. Também rastreia ou deixa de rastrear missões, todas ou por zona."
L["TRACKING"] = "Rastreamento"
L["TRACK_ALL"] = "Rastrear todas"
L["UNTRACK_ALL"] = "Parar de rastrear todas"
L["ABANDON_TOOLTIP"] = "Abandona as missões marcadas. Pede confirmação."
