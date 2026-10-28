require("L5")

offset = 0




shapeTypes = {}

function setup()
  size(400, 400)
  fill(255, 72, 176)
    
  -- 1 = rect, 2 = circle
  for i = 0, 15 do
    shapeTypes[i] = math.random(1, 2)
   
    
    
      
    
  end
end

function draw()
  if frameCount % 95 == 0 then

    
    -- Pick a new random shape layout every 50 frames
    for i = 0, 15 do
      shapeTypes[i] = math.random(1, 2)
    
    end
  end
  


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
        fill(255, 232, 0)
      rect(random(255), random(255), random(255))
       fill(0,120,191)
      ellipse(random(255), random(255), random(255))
        fill(255, 72, 176)
    end
    

  end

  offset = offset + 0.1
end
