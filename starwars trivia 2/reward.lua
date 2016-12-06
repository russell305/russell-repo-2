local storyboard = require "storyboard" 
local widget = require "widget"

local reward={}
local reward_group
local reward_text
--print("storyboard.level"..storyboard.level)

function reward.pay()
    reward_group = display.newGroup( )
    
    function reward.player()
        reward_group:removeSelf( )
        reward_group=nil
        if answer1 then
            answer1:setEnabled(true) 
        end
        if answer2 then
            answer2:setEnabled(true) 
        end
        if answer3 then
            answer3:setEnabled(true) 
        end
        if answer4 then
            answer4:setEnabled(true) 
        end
        local var=5
        storyboard.Skips=var
        storyboard.Removes=var
        storyboard.Hints=var
            
        myData1:store('skips',storyboard.Skips)
        myData1:save()
        myData2:store('removes',storyboard.Removes)
        myData2:save()
        myData3:store('hints',storyboard.Hints)
        myData3:save()
        storyboard.gotoScene('start')
    end 

 

    function reward.buy(event)
        if  event.phase == "began" then
            audio.play(click)
        elseif  event.phase == "ended" then
            reward.player()
        end
    end   

    function reward.cancel(event)
        if  event.phase == "began" then
            audio.play(click)
        elseif  event.phase == "ended" then
            reward_group:removeSelf( )
            reward_group=nil
            if answer1 then
                answer1:setEnabled( true ) 
            end
            if answer2 then
                answer2:setEnabled( true ) 
            end
            if answer3 then
                answer3:setEnabled( true ) 
            end
            if answer4 then
                answer4:setEnabled( true ) 
            end
        end 
    end 

    local shade1 = display.newRoundedRect(w/2,h/2+40,w/2+150,h-120,25)
    shade1:setFillColor(0,0,0)
    reward_group:insert(shade1)
        if answer1 then
            answer1:setEnabled( false ) 
        end
        if answer2 then
            answer2:setEnabled( false ) 
        end
        if answer3 then
            answer3:setEnabled( false ) 
        end
        if answer4 then
            answer4:setEnabled( false ) 
        end 

        
    local reward_text="You are down to Zero!  Start Again?..."
         

    local options2 = 
        {
            text = reward_text,
            x = w/2,
            y= h/3.5,
            width = 550,   
            font = "marker felt",
            fontSize = 62,
            align = "center",
        }
    local line1 = display.newText(options2)
    line1:setFillColor( 0, 1, 0 )
    reward_group:insert(line1)

    local buy_button = widget.newButton
    {   defaultFile = "template.png",
        left = w/2-200,
        top = h/2-25,
        width = 400,
        height = 120,
        
        onEvent = reward.buy,
    }
    reward_group:insert(buy_button)

    local buyText =display.newText("Play", buy_button.x, buy_button.y, "marker felt", 75)
    buyText:setFillColor(.2, .5, 0)
    reward_group:insert(buyText)

    local cancel_button = widget.newButton
    {   defaultFile = "template.png",
        left = w/2-200,
        top = h/2+245,
        width = 400,
        height = 120,
        
        onEvent = reward.cancel,
    }
    reward_group:insert(cancel_button)

    local cancelText=display.newText("Cancel", cancel_button.x, cancel_button.y, "marker felt", 75)
    cancelText:setFillColor( 1, 0, 0 )
    reward_group:insert(cancelText)
  
end

return reward