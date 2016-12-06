local storyboard = require( "storyboard" )
local scene = storyboard.newScene()
local widget = require "widget"
storyboard.numberCorrect=0
storyboard.isCorrect=true





-- Called when the scene's view does not exist:
function scene:createScene( event )
        local group = self.view

storyboard.removeScene('main')
storyboard.removeScene('next')
storyboard.removeScene('ques1')
storyboard.removeScene('ques2')
storyboard.removeScene('ques3')
storyboard.removeScene('ques4')
storyboard.removeScene('ques5')
storyboard.removeScene('ques6')
storyboard.removeScene('ques7')
storyboard.removeScene('ques8')
storyboard.removeScene('ques9')
storyboard.removeScene('ques10')
storyboard.removeScene('ques11')
storyboard.removeScene('ques12')
storyboard.removeScene('ques13')
storyboard.removeScene('ques14')
storyboard.removeScene('ques15')
storyboard.removeScene('ques16')

storyboard.removeScene('ques17')
storyboard.removeScene('ques18')
storyboard.removeScene('ques19')
storyboard.removeScene('ques20')
storyboard.removeScene('ques21')
storyboard.removeScene('ques22')
storyboard.removeScene('ques23')
storyboard.removeScene('ques24')
storyboard.removeScene('ques25')
storyboard.removeScene('ques26')
storyboard.removeScene('ques27')
storyboard.removeScene('ques28')
storyboard.removeScene('ques29')
storyboard.removeScene('ques30')
storyboard.removeScene('ques31')
storyboard.removeScene('ques32')
storyboard.removeScene('ques33')
storyboard.removeScene('ques34')
storyboard.removeScene('ques35')
storyboard.removeScene('ques36')
storyboard.removeScene('ques37')
storyboard.removeScene('ques38')
storyboard.removeScene('ques39')
storyboard.removeScene('ques40')
storyboard.removeScene('ques41')
storyboard.removeScene('ques42')
storyboard.removeScene('ques43')
storyboard.removeScene('ques44')
storyboard.removeScene('ques45')
storyboard.removeScene('ques46')
storyboard.removeScene('ques47')
storyboard.removeScene('ques48')
storyboard.removeScene('ques49')
storyboard.removeScene('ques50')


bg = display.newImageRect('startPage.png',w ,h)
        bg.x = w/2
        bg.y = h/2
        group:insert (bg)
        bg.alpha = .8

d1 = display.newImageRect('drake5.jpg',w ,h)
        --d1.alpha=.2
        d1.x = w/2
        d1.y = h/2
        group:insert (d1) 

        bgTitle= display.newImageRect('title.png',w ,h)
        bgTitle.x = w/2
        bgTitle.y = 550
        group:insert (bgTitle)   

end
-- Called when scene is about to move offscreen:
function scene:enterScene( event )
        local group = self.view



    startA = function (event )
        if  event.phase == "began" then
            audio.play(click)
            start:scale(1.2,1.2)
        elseif  event.phase == "ended" then
            storyboard.gotoScene('ques1', 'fade', 200)
    
        end
    end
start = widget.newButton
{defaultFile = "start.png",
    left = w/2-200,
    top = h-260,
    width = 400,
    height = 120,
    
    onEvent = startA,
}
group:insert( start )





  -------------------------------------------------
  --[[
    onTouchE = function (event )
        if  event.phase == "began" then
            audio.play(click)
        elseif  event.phase == "ended" then
            native.showPopup( "social", options )
       end
end 
  --]]
  onTouchE = function (event )
        if  event.phase == "began" then
            audio.play(click)
            myButtonE:scale(1.2,1.2)
        elseif  event.phase == "ended" then
        myButtonE:scale(.8334,.8334)
        local options =
        {
        to = "",
        subject = "You think you know Star Wars?",
        body = "You think you know Star Wars?, iTunes- https://itunes.apple.com/us/app/you-think-you-know-me-star/id841322717?ls=1&mt=8",
        attachment = { baseDir=system.DocumentsDirectory,
        filename="Screenshot.png", type="image" },
        }
        native.showPopup("mail", options)
        end
        end
        --]]
       myButtonE = widget.newButton
        {
            defaultFile = "email.png",
            left = w-120,
            top = h-305,
            width = 70,
            height = 70,
          
            onEvent = onTouchE,
        }
        group:insert( myButtonE )  


---------------------------------------------

     onTouchText = function (event )
        if  event.phase == "began" then
            audio.play(click)
            myButtonText:scale(1.2,1.2)
        elseif  event.phase == "ended" then
        myButtonText:scale(.8334,.8334)
            local options =
            {
            body = "You think you know Star Wars?, iTunes-  https://itunes.apple.com/us/app/you-think-you-know-me-star/id841322717?ls=1&mt=8",
                        
            }
            native.showPopup("sms", options)
            end
        end

        myButtonText = widget.newButton
        {
            defaultFile = "text.png",
            left = w-120,
            top = h-165,
            width = 70,
            height = 70,
         
            onEvent = onTouchText,
        }
        group:insert( myButtonText )
-------------------------------------------


end   


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