display.setStatusBar( display.HiddenStatusBar ) 

w = display.contentWidth
h = display.contentHeight
storyboard = require 'storyboard'
reward_t= require "reward"
ads = require "ads"


display.setDefault( "magTextureFilter", "nearest" )
display.setDefault( "minTextureFilter", "linear" )
require( "ice" )
myData1 = ice:loadBox('skips')
myData2 = ice:loadBox('removes')
myData3 = ice:loadBox('hints')

--[[
myData1:clear()
myData1:save()

myData2:clear()
myData2:save()

myData3:clear()
myData3:save()
--]]  

skipCount = myData1:retrieve('skips') 
storyboard.Skips=skipCount
print(storyboard.Skips)

removeCount = myData2:retrieve('removes') 
storyboard.Removes= removeCount
print(storyboard.Removes)

hintCount = myData3:retrieve('hints') 
storyboard.Hints= hintCount
print(storyboard.Hints)

local starting_count=5


if (skipCount ==nil ) then
  myData1:store('skips',starting_count)
    myData1:save()
    storyboard.Skips=starting_count
  print(storyboard.Skips)
end 
  
if (removeCount ==nil ) then
  myData2:store('removes',starting_count)
    myData2:save()
    storyboard.Removes=starting_count
  print(storyboard.Removes)
end 

if (hintCount ==nil ) then
  myData3:store('hints',starting_count)
    myData3:save()
    storyboard.Hints=starting_count
  print(storyboard.Hints)
end 

click= audio.loadSound('click.mp3')
cheers = audio.loadSound('cheers.mp3')


if (system.getInfo("platformName")=="Android") then 
    --ads.init("vungle", 'com.miamigames.games.kimkardashian', callback)
    ads.init("vungle", '56cb3515a5700ab46f00000c')
else 
    ads.init( "vungle", '841322717' )
end
storyboard.gotoScene('start')


