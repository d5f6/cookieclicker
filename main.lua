--[[
  Cookie Clicker

  Author: Dennis Freitag
]]

function love.load()
  love.window.setTitle('Cookie Clicker')
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
  love.graphics.print('Cookie Clicker')
end