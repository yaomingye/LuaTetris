--------------------------------------------------------------
-- This file was automatically generated by Cocos Studio.
-- Do not make changes to this file.
-- All changes will be lost.
--------------------------------------------------------------

local luaExtend = require "LuaExtend"

-- using for layout to decrease count of local variables
local layout = nil
local localLuaFile = nil
local innerCSD = nil
local innerProject = nil
local localFrame = nil

local Result = {}
------------------------------------------------------------
-- function call description
-- create function caller should provide a function to 
-- get a callback function in creating scene process.
-- the returned callback function will be registered to 
-- the callback event of the control.
-- the function provider is as below :
-- Callback callBackProvider(luaFileName, node, callbackName)
-- parameter description:
-- luaFileName  : a string, lua file name
-- node         : a Node, event source
-- callbackName : a string, callback function name
-- the return value is a callback function
------------------------------------------------------------
function Result.create(callBackProvider)

local result={}
setmetatable(result, luaExtend)

--Create Scene
local Scene=cc.Node:create()
Scene:setName("Scene")

--Create mainUI
local mainUI = ccui.ImageView:create()
mainUI:ignoreContentAdaptWithSize(false)
mainUI:loadTexture("TetrisUI.png",0)
mainUI:setLayoutComponentEnabled(true)
mainUI:setName("mainUI")
mainUI:setTag(5)
mainUI:setCascadeColorEnabled(true)
mainUI:setCascadeOpacityEnabled(true)
mainUI:setPosition(320.0645, 548.9467)
layout = ccui.LayoutComponent:bindLayoutComponent(mainUI)
layout:setPositionPercentX(0.5001)
layout:setPositionPercentY(0.5718)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(1.1417)
layout:setSize({width = 640.0000, height = 1096.0000})
layout:setHorizontalEdge(3)
layout:setVerticalEdge(3)
layout:setLeftMargin(0.0645)
layout:setRightMargin(-0.0645)
layout:setTopMargin(-136.9467)
layout:setBottomMargin(0.9467)
Scene:addChild(mainUI)

--Create score
local score = ccui.TextBMFont:create()
score:setFntFile("markerfelt24shadow.fnt")
score:setString([[Score]])
score:setLayoutComponentEnabled(true)
score:setName("score")
score:setTag(13)
score:setCascadeColorEnabled(true)
score:setCascadeOpacityEnabled(true)
score:setPosition(111.6160, 421.3440)
score:setScaleX(2.7848)
score:setScaleY(2.0581)
layout = ccui.LayoutComponent:bindLayoutComponent(score)
layout:setPositionPercentX(0.1744)
layout:setPositionPercentY(0.4389)
layout:setPercentWidth(0.0875)
layout:setPercentHeight(0.0271)
layout:setSize({width = 56.0000, height = 26.0000})
layout:setHorizontalEdge(3)
layout:setVerticalEdge(3)
layout:setLeftMargin(83.6160)
layout:setRightMargin(500.3840)
layout:setTopMargin(525.6560)
layout:setBottomMargin(408.3440)
Scene:addChild(score)

--Create scoreDisplay
local scoreDisplay = ccui.TextBMFont:create()
scoreDisplay:setFntFile("markerfelt24shadow.fnt")
scoreDisplay:setString([[0]])
scoreDisplay:setLayoutComponentEnabled(true)
scoreDisplay:setName("scoreDisplay")
scoreDisplay:setTag(14)
scoreDisplay:setCascadeColorEnabled(true)
scoreDisplay:setCascadeOpacityEnabled(true)
scoreDisplay:setPosition(110.1440, 357.0240)
scoreDisplay:setScaleX(2.7848)
scoreDisplay:setScaleY(2.0581)
layout = ccui.LayoutComponent:bindLayoutComponent(scoreDisplay)
layout:setPositionPercentX(0.1721)
layout:setPositionPercentY(0.3719)
layout:setPercentWidth(0.0250)
layout:setPercentHeight(0.0271)
layout:setSize({width = 16.0000, height = 26.0000})
layout:setHorizontalEdge(3)
layout:setVerticalEdge(3)
layout:setLeftMargin(102.1440)
layout:setRightMargin(521.8560)
layout:setTopMargin(589.9760)
layout:setBottomMargin(344.0240)
Scene:addChild(scoreDisplay)

--Create leftButton
local leftButton = ccui.Button:create()
leftButton:ignoreContentAdaptWithSize(false)
leftButton:loadTextureNormal("moveLeft.png",0)
leftButton:loadTexturePressed("moveLeftPressed.png",0)
leftButton:loadTextureDisabled("Default/Button_Disable.png",0)
leftButton:setTitleFontSize(14)
leftButton:setTitleColor({r = 65, g = 65, b = 70})
leftButton:setScale9Enabled(true)
leftButton:setCapInsets({x = 15, y = 11, width = 60, height = 58})
leftButton:setLayoutComponentEnabled(true)
leftButton:setName("leftButton")
leftButton:setTag(6)
leftButton:setCascadeColorEnabled(true)
leftButton:setCascadeOpacityEnabled(true)
leftButton:setPosition(101.4172, 107.1500)
leftButton:setScaleX(1.1414)
leftButton:setScaleY(1.1462)
layout = ccui.LayoutComponent:bindLayoutComponent(leftButton)
layout:setPositionPercentX(0.1585)
layout:setPositionPercentY(0.1116)
layout:setPercentWidth(0.1406)
layout:setPercentHeight(0.0833)
layout:setSize({width = 90.0000, height = 80.0000})
layout:setLeftMargin(56.4172)
layout:setRightMargin(493.5828)
layout:setTopMargin(812.8500)
layout:setBottomMargin(67.1500)
Scene:addChild(leftButton)

--Create rightButton
local rightButton = ccui.Button:create()
rightButton:ignoreContentAdaptWithSize(false)
rightButton:loadTextureNormal("moveRight.png",0)
rightButton:loadTexturePressed("moveRightPressed.png",0)
rightButton:loadTextureDisabled("Default/Button_Disable.png",0)
rightButton:setTitleFontSize(14)
rightButton:setTitleColor({r = 65, g = 65, b = 70})
rightButton:setScale9Enabled(true)
rightButton:setCapInsets({x = 15, y = 11, width = 60, height = 58})
rightButton:setLayoutComponentEnabled(true)
rightButton:setName("rightButton")
rightButton:setTag(7)
rightButton:setCascadeColorEnabled(true)
rightButton:setCascadeOpacityEnabled(true)
rightButton:setPosition(229.5867, 107.4434)
rightButton:setScaleX(1.1418)
rightButton:setScaleY(1.1429)
layout = ccui.LayoutComponent:bindLayoutComponent(rightButton)
layout:setPositionPercentX(0.3587)
layout:setPositionPercentY(0.1119)
layout:setPercentWidth(0.1406)
layout:setPercentHeight(0.0833)
layout:setSize({width = 90.0000, height = 80.0000})
layout:setLeftMargin(184.5867)
layout:setRightMargin(365.4133)
layout:setTopMargin(812.5566)
layout:setBottomMargin(67.4434)
Scene:addChild(rightButton)

--Create rotaleButton
local rotaleButton = ccui.Button:create()
rotaleButton:ignoreContentAdaptWithSize(false)
rotaleButton:loadTextureNormal("rotale.png",0)
rotaleButton:loadTexturePressed("rotalePressed.png",0)
rotaleButton:loadTextureDisabled("Default/Button_Disable.png",0)
rotaleButton:setTitleFontSize(14)
rotaleButton:setTitleColor({r = 65, g = 65, b = 70})
rotaleButton:setScale9Enabled(true)
rotaleButton:setCapInsets({x = 15, y = 11, width = 65, height = 74})
rotaleButton:setLayoutComponentEnabled(true)
rotaleButton:setName("rotaleButton")
rotaleButton:setTag(8)
rotaleButton:setCascadeColorEnabled(true)
rotaleButton:setCascadeOpacityEnabled(true)
rotaleButton:setPosition(568.1309, 107.1354)
rotaleButton:setScaleX(0.9577)
rotaleButton:setScaleY(0.9512)
layout = ccui.LayoutComponent:bindLayoutComponent(rotaleButton)
layout:setPositionPercentX(0.8877)
layout:setPositionPercentY(0.1116)
layout:setPercentWidth(0.1484)
layout:setPercentHeight(0.1000)
layout:setSize({width = 95.0000, height = 96.0000})
layout:setLeftMargin(520.6309)
layout:setRightMargin(24.3691)
layout:setTopMargin(804.8646)
layout:setBottomMargin(59.1354)
Scene:addChild(rotaleButton)

--Create downButton
local downButton = ccui.Button:create()
downButton:ignoreContentAdaptWithSize(false)
downButton:loadTextureNormal("moveDown.png",0)
downButton:loadTexturePressed("moveDownPressed.png",0)
downButton:loadTextureDisabled("Default/Button_Disable.png",0)
downButton:setTitleFontSize(14)
downButton:setTitleColor({r = 65, g = 65, b = 70})
downButton:setScale9Enabled(true)
downButton:setCapInsets({x = 15, y = 11, width = 69, height = 78})
downButton:setLayoutComponentEnabled(true)
downButton:setName("downButton")
downButton:setTag(9)
downButton:setCascadeColorEnabled(true)
downButton:setCascadeOpacityEnabled(true)
downButton:setPosition(435.7800, 107.4300)
downButton:setScaleX(0.9512)
downButton:setScaleY(0.9520)
layout = ccui.LayoutComponent:bindLayoutComponent(downButton)
layout:setPositionPercentX(0.6809)
layout:setPositionPercentY(0.1119)
layout:setPercentWidth(0.1547)
layout:setPercentHeight(0.1042)
layout:setSize({width = 99.0000, height = 100.0000})
layout:setLeftMargin(386.2800)
layout:setRightMargin(154.7200)
layout:setTopMargin(802.5700)
layout:setBottomMargin(57.4300)
Scene:addChild(downButton)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Scene
return result;
end

return Result

