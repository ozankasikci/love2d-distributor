    -- os.execute ('/Users/ozankasikci/Documents/game-projects/distributor/release')
local ui

local screens = {
  selectBuildType = 1,
  buildOptions = 2,
}

local state = {
  screen = screens.selectBuildType,
  buildFor = '',
  gameName = '',
}

local selectBuildType = require 'screens.select-build-type'
local buildOptions = require 'screens.build-options'
local nuklear = require 'nuklear'

function love.load()
  ui = nuklear.newUI()
end

function love.update(dt)
  ui:frameBegin()
  if ui:windowBegin('window1', 'Build Options', 0, 0, love.graphics.getWidth(), love.graphics.getHeight(), 'border') then

    selectBuildType(ui, state, screens)
    buildOptions(ui, state, screens)

  end
  ui:windowEnd()
  ui:frameEnd()
end

function love.draw()
  ui:draw()
end

function love.keypressed(key, scancode, isrepeat)
  ui:keypressed(key, scancode, isrepeat)
end

function love.keyreleased(key, scancode)
  ui:keyreleased(key, scancode)
end

function love.mousepressed(x, y, button, istouch)
  ui:mousepressed(x, y, button, istouch)
end

function love.mousereleased(x, y, button, istouch)
  ui:mousereleased(x, y, button, istouch)
end

function love.mousemoved(x, y, dx, dy, istouch)
  ui:mousemoved(x, y, dx, dy, istouch)
end

function love.textinput(text)
  ui:textinput(text)
end

function love.wheelmoved(x, y)
  ui:wheelmoved(x, y)
end
