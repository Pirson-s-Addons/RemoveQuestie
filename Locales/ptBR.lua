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
