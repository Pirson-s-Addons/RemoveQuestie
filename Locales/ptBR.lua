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
L["ZONE_SELECTED"] = "%s: %d missão(ões) selecionada(s)."
L["COMPACT_ON"] = "Botões compactos ativados."
L["COMPACT_OFF"] = "Botões compactos desativados."
L["HELP"] = "/rq compact - botões e texto menores (para mapas reduzidos como o Leatrix Maps)."
