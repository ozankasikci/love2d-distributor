function selectBuildType(ui, state, screens)
  if state.screen ~= screens.selectBuildType then return end

  ui:layoutRow('dynamic', 30, 2)
  if ui:button('Build for Windows') then
    state.buildFor = 'windows'
    state.screen = screens.buildOptions
  end

  ui:layoutRow('dynamic', 30, 2)
  if ui:button('Build for MacOS') then
    state.buildFor = 'mac'
    state.screen = screens.buildOptions
  end
end

return selectBuildType
