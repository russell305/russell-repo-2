local storyboard = require( "storyboard" )
local scene = storyboard.newScene()

local h = display.contentHeight
local w = display.contentWidth


---------------------------------------------------------------------------------
-- BEGINNING OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

-- Called when the scene's view does not exist:


function scene:createScene( event )
        local group = self.view

       
    
        bg = display.newImageRect('env1.jpg',w ,h)
        bg.x = w - w/2
        bg.y = h - h/2
        group:insert(bg)

        d1 = display.newImageRect('drake5.jpg',w ,h)
        d1.alpha=.2
        d1.x = w/2
        d1.y = h/2
        group:insert (d1)  

                        shade = display.newRoundedRect(w/2,h/2-32,500,100,35)
                        shade:setFillColor(0,0,0,255)
                        --shade:setReferencePoint(display.TopLeftReferencePoint)
                        shade.alpha = .5
                        group:insert(shade)

                        loading = display.newText("Loading..." ,w/2, h/2 -35,'chalkduster', 70)
                        group:insert(loading)

end


-- Called BEFORE scene has moved onscreen:
function scene:willEnterScene( event )
        local group = self.view

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
         storyboard.removeScene('next')

end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
        local group = self.view

        function story()
                
              
                print 'restart'
                if (storyboard.level == 1) then
                        storyboard.gotoScene('ques1', 'fade', 100)
                     
                elseif (storyboard.level == 2) then     
                        storyboard.gotoScene('ques2', 'fade', 100)
                       --  
                elseif (storyboard.level == 3) then
                        storyboard.gotoScene('ques3', 'fade', 100)
                elseif (storyboard.level == 4) then
                        storyboard.gotoScene('ques4', 'fade', 100)
                elseif (storyboard.level == 5) then
                        storyboard.gotoScene('ques5', 'fade', 100)  
                elseif (storyboard.level == 6) then
                        storyboard.gotoScene('ques6', 'fade', 100)   
                elseif (storyboard.level == 7) then
                        storyboard.gotoScene('ques7', 'fade', 100)   
                elseif (storyboard.level == 8) then
                        storyboard.gotoScene('ques8', 'fade', 100)
                elseif (storyboard.level == 9) then
                        storyboard.gotoScene('ques9', 'fade', 100)
                elseif (storyboard.level == 10) then
                        storyboard.gotoScene('ques10', 'fade', 100)  
                elseif (storyboard.level == 11) then
                        storyboard.gotoScene('ques11', 'fade', 100)
                elseif (storyboard.level == 12) then
                        storyboard.gotoScene('ques12', 'fade', 100) 
                elseif (storyboard.level == 13) then
                        storyboard.gotoScene('ques13', 'fade', 100)  
                elseif (storyboard.level == 14) then
                        storyboard.gotoScene('ques14', 'fade', 100)
                elseif (storyboard.level == 15) then
                        storyboard.gotoScene('ques15', 'fade', 100) 
                elseif (storyboard.level == 16) then
                        storyboard.gotoScene('ques16', 'fade', 100)  
                elseif (storyboard.level == 17) then
                        storyboard.gotoScene('ques17', 'fade', 100)  
                elseif (storyboard.level == 18) then
                        storyboard.gotoScene('ques18', 'fade', 100)
                elseif (storyboard.level == 19) then
                        storyboard.gotoScene('ques19', 'fade', 100) 
                elseif (storyboard.level == 20) then
                        storyboard.gotoScene('ques20', 'fade', 100)  
                elseif (storyboard.level == 21) then
                        storyboard.gotoScene('ques21', 'fade', 100)
                elseif (storyboard.level == 22) then
                        storyboard.gotoScene('ques22', 'fade', 100)  
                elseif (storyboard.level == 23) then
                        storyboard.gotoScene('ques23', 'fade', 100) 
                elseif (storyboard.level == 24) then
                        storyboard.gotoScene('ques24', 'fade', 100)
                elseif (storyboard.level == 25) then
                        storyboard.gotoScene('ques25', 'fade', 100)
                elseif (storyboard.level == 26) then
                        storyboard.gotoScene('ques26', 'fade', 100)  
                elseif (storyboard.level == 27) then
                        storyboard.gotoScene('ques27', 'fade', 100)
                elseif (storyboard.level == 28) then
                        storyboard.gotoScene('ques28', 'fade', 100)  
                elseif (storyboard.level == 29) then
                        storyboard.gotoScene('ques29', 'fade', 100) 
                elseif (storyboard.level == 30) then
                        storyboard.gotoScene('ques30', 'fade', 100)    
                 elseif (storyboard.level == 31) then
                        storyboard.gotoScene('ques31', 'fade', 100)
                elseif (storyboard.level == 32) then
                        storyboard.gotoScene('ques32', 'fade', 100) 
                elseif (storyboard.level == 33) then
                        storyboard.gotoScene('ques33', 'fade', 100) 
                elseif (storyboard.level == 34) then
                        storyboard.gotoScene('ques34', 'fade', 100)
                elseif (storyboard.level == 35) then
                        storyboard.gotoScene('ques35', 'fade', 100)
                elseif (storyboard.level == 36) then
                        storyboard.gotoScene('ques36', 'fade', 100)  
                elseif (storyboard.level == 37) then
                        storyboard.gotoScene('ques37', 'fade', 100)
                elseif (storyboard.level == 38) then
                        storyboard.gotoScene('ques38', 'fade', 100) 
                elseif (storyboard.level == 39) then
                        storyboard.gotoScene('ques39', 'fade', 100) 
                elseif (storyboard.level == 40) then
                        storyboard.gotoScene('ques40', 'fade', 100)   
                elseif (storyboard.level == 41) then
                        storyboard.gotoScene('ques41', 'fade', 100)
                elseif (storyboard.level == 42) then
                        storyboard.gotoScene('ques42', 'fade', 100)  
                elseif (storyboard.level == 43) then
                        storyboard.gotoScene('ques43', 'fade', 100)  
                elseif (storyboard.level == 44) then
                        storyboard.gotoScene('ques44', 'fade', 100)
                elseif (storyboard.level == 45) then
                        storyboard.gotoScene('ques45', 'fade', 100)
                elseif (storyboard.level == 46) then
                        storyboard.gotoScene('ques46', 'fade', 100)  
                elseif (storyboard.level == 47) then
                        storyboard.gotoScene('ques47', 'fade', 100)
                elseif (storyboard.level == 48) then
                        storyboard.gotoScene('ques48', 'fade', 100)  
                elseif (storyboard.level == 49) then
                        storyboard.gotoScene('ques49', 'fade', 100) 
                elseif (storyboard.level == 50) then
                        storyboard.gotoScene('ques50', 'fade', 100)                                                           
                        --]]
                end     
                
        end
        timer1 = timer.performWithDelay(400, story,1)

end


-- Called when scene is about to move offscreen:
function scene:exitScene( event )
        local group = self.view

        -----------------------------------------------------------------------------

        --      INSERT code here (e.g. stop timers, remove listeners, unload sounds, etc.)

        -----------------------------------------------------------------------------

end


-- Called AFTER scene has finished moving offscreen:
function scene:didExitScene( event )
        local group = self.view

        -----------------------------------------------------------------------------

        --      This event requires build 2012.782 or later.

        -----------------------------------------------------------------------------

end


-- Called prior to the removal of scene's "view" (display group)
function scene:destroyScene( event )
        local group = self.view

        -----------------------------------------------------------------------------

        --      INSERT code here (e.g. remove listeners, widgets, save state, etc.)

        -----------------------------------------------------------------------------

end


-- Called if/when overlay scene is displayed via storyboard.showOverlay()
function scene:overlayBegan( event )
        local group = self.view
        local overlay_name = event.sceneName  -- name of the overlay scene

        -----------------------------------------------------------------------------

        --      This event requires build 2012.797 or later.

        -----------------------------------------------------------------------------

end


-- Called if/when overlay scene is hidden/removed via storyboard.hideOverlay()
function scene:overlayEnded( event )
        local group = self.view
        local overlay_name = event.sceneName  -- name of the overlay scene

        -----------------------------------------------------------------------------

        --      This event requires build 2012.797 or later.

        -----------------------------------------------------------------------------

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