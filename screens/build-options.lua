local gameName = { value = '' }

function buildOptions(ui, state, screens)
  if state.screen ~= screens.buildOptions then return end

  ui:layoutRow('static', 30, { 90, 120 })
  ui:label('Game Name:')
  ui:edit('field', gameName)
  state.gameName = gameName.value

  ui:layoutSpaceBegin('static', 30, 3)
  ui:layoutSpacePush(0, 0, 100, 100)
  ui:layoutSpaceEnd()

  ui:layoutRow('dynamic', 30, 1)
  if ui:button('Build') then
    os.execute ('GAME_NAME=' .. state.gameName .. ' /Users/ozankasikci/Documents/game-projects/distributor/release')
  end
end

return buildOptions
