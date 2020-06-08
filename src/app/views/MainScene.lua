local MainScene = class("MainScene", cc.load("mvc").ViewBase)
local gamelayer = require("app.views.GameLayer")

MainScene.RESOURCE_FILENAME = "TetrisScene.csb"
MainScene.RESOURCE_BINDING = {
    ["scoreDisplay"] = {
		["varname"] = "scoreDisplay"
    },
    ["leftButton"] = {
		["varname"] = "moveLeftButton",
        ["events"] = {
            ["event"] = "touch"
        }
    },
    ["rightButton"] = {
		["varname"] = "moveRightButton",
        ["events"] = {
            ["event"] = "touch"

        }
    },
    ["downButton"] = {
		["varname"] = "moveDownButton",
        ["events"] = {
            ["event"] = "touch"
        }
    },
    ["rotaleButton"] = {
		["varname"] = "rotaleButton",
        ["events"] = {    
            ["event"] = "touch"
        }
    }
}

function MainScene:onCreate()
    self:initEvent()
    -- local sprite = cc.Sprite:create("block_setting/Block.png")
	-- sprite:setName("test")
    -- sprite:setVisible(true)
    -- sprite:setPosition(300, 500)
    -- sprite:setScale(1)
    -- self:addChild(sprite)
    if not gamelayer then
        error("gamelayer is loaded failure!")
        return    
    end
    gamelayer:onCreate(self)
end

function MainScene:initEvent()
    local isTouch = false -- 长按判断

    self.moveLeftButton:addTouchEventListener(function (event,type)
        --左移按钮触摸事件
        if type == ccui.TouchEventType.began then
            --触摸事件
            isTouch = true
            print("左")
        end

        if type == ccui.TouchEventType.ended then
            isTouch = false
        end
    end)
    
    self["moveRightButton"]:addTouchEventListener(function (event,type)
        --右移按钮触摸事件
        if type == ccui.TouchEventType.began then
            --触摸事件
            isTouch = true
            print("右")
        end
        if type == ccui.TouchEventType.ended then
            isTouch = false
        end
    end)

    self.moveDownButton:addTouchEventListener(function (event,type)
        --加速下移按钮触摸事件
        if type == ccui.TouchEventType.began then
            --触摸事件
            isTouch = true
            print("下")
        end
        if type == ccui.TouchEventType.ended then
            isTouch = false
        end
    end)

    self.rotaleButton:addTouchEventListener(function (event,type)
        --方块旋转按钮触摸事件
        if type == ccui.TouchEventType.began then
            --触摸事件
            isTouch = true
            print("转")
        end
        if type == ccui.TouchEventType.ended then
            isTouch = false
        end
    end)
end

return MainScene
