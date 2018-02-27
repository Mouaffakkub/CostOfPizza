-----------------------------------------------------------------------------------------
--
-- Created by: Mouaffak Koubeisy
-- Created on: Feb 27
-- This code calculates the cost of a pizza depending on the size.
-----------------------------------------------------------------------------------------
local diameterOfPizzaTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
diameterOfPizzaTextField.id = "length textField"

local costOfPizzaTextField = display.newText( " Input Diameter Of Pizza ", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )
costOfPizzaTextField.id = "area textField"
costOfPizzaTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.jpg", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local diameterOfPizza
    local costOfPizza
 
    diameterOfPizza = diameterOfPizzaTextField.text
    costOfPizza = (0.75 + 1 + ( diameterOfPizza * 0.5 )) + ((0.75 + 1 + ( diameterOfPizza * 0.5 )) * 0.13)
    costOfPizzaTextField.text = "The cost is " .. costOfPizza

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )