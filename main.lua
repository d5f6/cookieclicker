--[[
  Cookie Clicker

  Author: Dennis Freitag
]]

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

cookieTexture = love.graphics.newImage('graphics/cookie.png')

function love.load()
  love.window.setTitle('Cookie Clicker')

  love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT)
end

function love.keypressed(key)
  if key == 'escape' then
    love.event.quit()
  end
end

function love.mousepressed(x, y, button)

end

function love.update(dt)

end


function love.draw()
  love.graphics.draw(
    cookieTexture, 
    WINDOW_WIDTH / 2 - cookieTexture:getWidth() / 2, 
    WINDOW_HEIGHT / 2 - cookieTexture:getHeight() / 2 - 64
  )

end