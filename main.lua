--[[
  Cookie Clicker

  Author: d5f6
]]

local WINDOW_WIDTH = 1280
local WINDOW_HEIGHT = 720

local cookieTexture = love.graphics.newImage('graphics/cookie.png')

local cookies = 0

local largeFont = love.graphics.newFont(32)

local left = WINDOW_WIDTH / 2 - cookieTexture:getWidth() / 2
local right = left + cookieTexture:getWidth()
local top = WINDOW_HEIGHT / 2 - cookieTexture:getHeight() / 2 - 64
local bottom = top + cookieTexture:getHeight()


function love.load()
  love.window.setTitle('Cookie Clicker')

  love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT)

  love.graphics.setFont(largeFont)
end

function love.keypressed(key)
  if key == 'escape' then
    love.event.quit()
  end
end

function love.mousepressed(x, y, button)
  if button == 1 then
    cookies = cookies + 1
  end
end

function love.update(dt)
  local x, y = love.mouse.getPosition()
  
  
end


function love.draw()
  love.graphics.printf(
    'Cookies: ' .. tostring(cookies), 
    0, 
    16, 
    WINDOW_WIDTH, 
    'center'
  )
  
  love.graphics.draw(
    cookieTexture, 
    left, 
    top
  )

end