local storyboard = require( "storyboard" )
local scene = storyboard.newScene()
local widget = require "widget"
storyboard.level = 24
local z=0

local skipNumber
local removeNumber
local hintNumber
 local myText
 local myTextHints

----------------------------------------------------------------------------------
-- 
--      NOTE:
--      
--      Code outside of listener functions (below) will only be executed once,
--      unless storyboard.removeScene() is called.
-- 
---------------------------------------------------------------------------------


-- local forward references should go here --


---------------------------------------------------------------------------------
-- BEGINNING OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

-- Called when the scene's view does not exist:
function scene:createScene( event )
        local group = self.view
        storyboard.removeScene('sceneRestart')
        storyboard.removeScene('start')

bg = display.newImageRect('env1.jpg',w ,h)
        bg.x = w - w/2
        bg.y = h - h/2
        group:insert(bg)

  d1 = display.newImageRect('drake4.jpg',w ,h)
        d1.alpha=.4
        d1.x = w - w/2
        d1.y = h - h/2
        group:insert (d1)    

level =   display.newText( "24/50",40,15, "marker felt", 30 )
level:setFillColor(1,0,0)
group:insert(level)

end


-- Called BEFORE scene has moved onscreen:
function scene:willEnterScene( event )
        local group = self.view


end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
        local group = self.view
        --storyboard.removeScene('next')
function  youLose()  

        shade = display.newRoundedRect(w/2,h/2,w-100,h-40,25)
        shade:setFillColor(0,0,0,255)
        shade.alpha = .7
        group:insert(shade)
        
        myText = display.newText( "WRONG!", shade.x, 400, "marker felt", 95 )
        myText:setFillColor( 1, 0, 0 )
        group:insert(myText)
        z=1
        storyboard.isCorrect=false

    local function listener( event )
        storyboard.gotoScene('next')
    end

timer.performWithDelay( 1200, listener )

end

      --------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

local options1 = 
{
    text = "Who was also known as Palpatine?",
    x = w/2,
    y= h/6,
    width = 800,     --required for multi-line and alignment
    font = "marker felt",
    fontSize = 70,
    align = "center",
}
local myText1 = display.newText( options1 )
myText1:setFillColor( 0, 0, 0 )
group:insert( myText1 )

-----------------------------------------------------------------

answer1A = function (event )
        if  event.phase == "began" then
            audio.play(click)
           answer1:setFillColor(1,0,0 )
           --answer1:setFillColor(0,1,0 )
        elseif  event.phase == "ended" then
           
            --storyboard.gotoScene('next')
            youLose()
    
        end
    end
answer1 = widget.newButton
{defaultFile = "template.png",
    left = w/2-350,
    top = h-750,
    width = 700,
    height = 100,
    
    onEvent = answer1A,
}
group:insert( answer1 )

answer1Text=display.newText( "Darth Plagueis", answer1.x, answer1.y, "marker felt", 50 )
answer1Text:setFillColor( 1, 0, 0 )
group:insert( answer1Text )
-----------------------------------------------------------------


answer2A = function (event )
        if  event.phase == "began" then
            audio.play(click)
           --answer2:setFillColor(1,0,0 )
           answer2:setFillColor(0,1,0 )
        elseif  event.phase == "ended" then
           
            storyboard.gotoScene('next')
            --youLose() 
        end
    end
answer2 = widget.newButton
{   defaultFile = "template.png",
    left = w/2-350,
    top = h-600,
    width = 700,
    height = 100,
    
    onEvent = answer2A,
}
group:insert( answer2 )

answer2Text=display.newText( "Darth Sidious", answer2.x, answer2.y, "marker felt", 50 )
answer2Text:setFillColor( 1, 0, 0 )
group:insert( answer2Text )
-----------------------------------------------------------------


answer3A = function (event )
        if  event.phase == "began" then
            audio.play(click)
            answer3:setFillColor(1,0,0 )
            --answer3:setFillColor(0,1,0 )
        elseif  event.phase == "ended" then
           --storyboard.gotoScene('next')
           youLose()
            
        end
    end
answer3 = widget.newButton
{   defaultFile = "template.png",
    left = w/2-350,
    top = h-450,
    width = 700,
    height = 100,
    
    onEvent = answer3A,
}
group:insert( answer3 )

answer3Text=display.newText( "Darth Vader", answer3.x, answer3.y, "marker felt", 50 )
answer3Text:setFillColor( 1, 0, 0 )
group:insert( answer3Text )

-----------------------------------------------------------------


answer4A = function (event )
        if  event.phase == "began" then
            audio.play(click)
            answer4:setFillColor(1,0,0 )
            --answer4:setFillColor(0,1,0 )
        elseif  event.phase == "ended" then
            --storyboard.gotoScene('next')
            youLose() 
        end
    end
answer4 = widget.newButton
{   defaultFile = "template.png",
    left = w/2-350,
    top = h-300,
    width = 700,
    height = 100,
    
    onEvent = answer4A,
}
group:insert( answer4 )

answer4Text=display.newText( "Darth Maul", answer4.x, answer4.y, "marker felt", 50 )
answer4Text:setFillColor( 1, 0, 0 )
group:insert( answer4Text )
-----------------------------------------------------------------

-----------------------------------------------------------------
hintNumber = storyboard.Hints

hintA = function (event )
        if  event.phase == "began" then
            audio.play(click)
            if storyboard.Hints >0 then

           storyboard.Hints=storyboard.Hints-1
            myData3:store('hints',storyboard.Hints)
            myData3:save()
            hint:removeSelf( )
            hint=nil
            hintNumber=hintNumber-1
            hintNumberText.text=hintNumber
            myTextHints = display.newText( "ds...",  w/2, h/4+100, "marker felt", 40 )
            myTextHints:setFillColor(0,0,0)
            group:insert( myTextHints )
            if z==1 then
            if shade then
                shade:removeSelf( )
                shade=nil
            end
            if myText then
                myText:removeSelf( )
                myText=nil
            end
            if restart then
                restart:removeSelf( )
                restart=nil
            end    
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
        end
    end

hint = widget.newButton
{   defaultFile = "hints.png",
    left = w/2-75,
    top = h-170,
    width = 120,
    height = 100,
    onEvent = hintA,
}
group:insert( hint )

hintNumberText = display.newText(hintNumber, hint.x, h-40, "marker felt", 40)
hintNumberText:setFillColor(0,1,0)
group:insert(hintNumberText)

if (storyboard.Hints==0) then
    hint.isVisible=false
    hintNumberText.isVisible=false
end-----------------------------------------------------------------

end
-- Called when scene is about to move offscreen:
function scene:exitScene( event )
        local group = self.view



end


-- Called AFTER scene has finished moving offscreen:
function scene:didExitScene( event )
        local group = self.view


end


-- Called prior to the removal of scene's "view" (display group)
function scene:destroyScene( event )
        local group = self.view

 

end


-- Called if/when overlay scene is displayed via storyboard.showOverlay()
function scene:overlayBegan( event )
        local group = self.view
        local overlay_name = event.sceneName  -- name of the overlay scene



end


-- Called if/when overlay scene is hidden/removed via storyboard.hideOverlay()
function scene:overlayEnded( event )
        local group = self.view
        local overlay_name = event.sceneName  -- name of the overlay scene

  

end



---------------------------------------------------------------------------------
-- END OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

-- "createScene" event is dispatched if scene's view does not exist
scene:addEventListener( "createScene", scene )

-- "willEnterScene" event is dispatched before scene transition begins
scene:addEventListener( "willEnterScene", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
scene:addEventListener( "enterScene", scene )

-- "exitScene" event is dispatched before next scene's transition begins
scene:addEventListener( "exitScene", scene )

-- "didExitScene" event is dispatched after scene has finished transitioning out
scene:addEventListener( "didExitScene", scene )

-- "destroyScene" event is dispatched before view is unloaded, which can be
-- automatically unloaded in low memory situations, or explicitly via a call to
-- storyboard.purgeScene() or storyboard.removeScene().
scene:addEventListener( "destroyScene", scene )

-- "overlayBegan" event is dispatched when an overlay scene is shown
scene:addEventListener( "overlayBegan", scene )

-- "overlayEnded" event is dispatched when an overlay scene is hidden/removed
scene:addEventListener( "overlayEnded", scene )

---------------------------------------------------------------------------------

return scene