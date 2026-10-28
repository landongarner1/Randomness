require("L5")

offset = 0
bgR = 100
bgG = 100
bgB = 100
circleR = 100
circleG = 100
circleB = 100
rectR = 100
rectG = 100
rectB = 100
shapeR = 100
shapeG = 100
shapeB = 100



shapeTypes = {}

function setup()
  size(400, 400)
  -- 1 = rect, 2 = circle
  for i = 0, 15 do
    shapeTypes[i] = math.random(1, 2)
      shapeR = random (255)
      shapeG = random (255)
      shapeB = random (255)
  end
end

function draw()
  if frameCount % 95 == 0 then
    bgR = random(255)
    bgG = random(255)
    bgB = random(255)
    
    -- Pick a new random shape layout every 50 frames
    for i = 0, 15 do
      shapeTypes[i] = math.random(1, 2)
    
    end
  end
  
  background(bgR, bgG, bgR)

  for i = 0, 15 do
    x = 50 + (i * 50)
    y = 200 + sin(offset + i) * 50
    
  
    if shapeTypes[i] == 1 then
      rect(x, y, 15)
    else
      -- Using x and y centers the circle on the wave path
      circle(x, y, 15) 
    end

    if frameCount % 95 == 0 then
      circle(random(255), random(255), random(255))
      rect(random(255), random(255), random(255))
      ellipse(random(255), random(255), random(255))
    end
    

  end

  offset = offset + 0.1
end
