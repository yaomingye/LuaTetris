-------------------------------------------------------
--- 俄罗斯方块游戏界面
-------------------------------------------------------
local GameLayer = class("GameLayer", ViewInterface)
local MVCManager = require "app.manager.MVCManager"

local gameArea = {
    leftBottomX = 250.75,
    leftBottomY = 258,
    rightTopX = 625,
    rightTopY = 858
}

local nextBlockArea = {
    leftBottomX = 70,
    leftBottomY = 610,
    rightTopX = 225,
    rightTopY = 858
}

local MAIN_VIEW_WIDTH = 12 + 2 -- 主窗口底边方格数（界面宽度）,左右两边不能用
local MAIN_VIEW_HEIGHT = 22 -- 主窗口侧边方格数（界面高度）
local VICE_VIEW_WIDTH = 4 -- 副窗口底边方格数（界面高度）
local VICE_VIEW_HEIGHT = 4 -- 副窗口侧边方格数（界面高度）

---------------------------------------------------------
--- 游戏界面层初始化，向游戏区域和下一个方块区域填充隐形方块
---------------------------------------------------------
function GameLayer:onCreate(scene)
    self.map = {} -- 保存游戏区域的精灵
    self.nextMap = {} -- 保存next区域的精灵
    local layerPlay = cc.Layer:create()
    local spriteInfo = {-- 方块们的信息
        gameBlock = {
            image = "block_setting/Block.png",
            name = "gameBlock",
            scale = 0.9975,
            isVisible = false
        }, 
        NextBlock = {
            image = "block_setting/Block.png",
            name = "nextBlock",
            scale = 1,
            isVisible = false
        }
    }

    local positionX = gameArea.leftBottomX
    local positionY = gameArea.leftBottomY
    local offset = 27.89 -- 偏移量，也是方块大小
    --从左下角开始由下往上,从左往右画方块
    for i = 1, MAIN_VIEW_WIDTH do
        for j = 1, MAIN_VIEW_HEIGHT do
            local sprite = cc.Sprite:create(spriteInfo.gameBlock.image)
            sprite:setName(spriteInfo.gameBlock.name)
            if i == 1 or i == 14 then -- 设置边框
                sprite:setScaleX(0.85) -- 缩小两侧方块
                sprite:setScaleY(0.995)
                if i == 1 then
                    sprite:setPosition(cc.p(251.25 + (i - 1) * offset, positionY + (j - 1) * offset))
                else
                    sprite:setPosition(cc.p(250 + 0.5 + (i - 1) * offset, positionY + (j - 1) * offset))
                end
                sprite:setColor({r = 0, g = 0, b = 0}) -- 涂黑，营造类似于游戏机的效果
                sprite:setVisible(true)
            else
                sprite:setColor({r = 250, g = 170, b = 250})
                sprite:setVisible(spriteInfo.gameBlock.isVisible)
                sprite:setScale(spriteInfo.gameBlock.scale)
                sprite:setPosition(cc.p(positionX + (i - 1) * offset, positionY + (j - 1) * offset))
                --local util = MVCManager:getUtils("Block")
                --self.map[util:makeKey(i, j)] = sprite
            end
            sprite:addTo(layerPlay)
        end
    end
    positionX = nextBlockArea.leftBottomX + 28 -- 为了让显示的方格居中，偏移一个格子的位置
    positionY = nextBlockArea.leftBottomY + 2 -- next区域的下半部分，向上偏移2像素显示效果更好
    -- 绘制next区域，方法同上
    for k = 1, 2 do
        for i = 1, VICE_VIEW_WIDTH do
            for j = 1, VICE_VIEW_HEIGHT do
                local sprite = cc.Sprite:create(spriteInfo.NextBlock.image)
                sprite:setName(spriteInfo.NextBlock.name)
                sprite:setScale(spriteInfo.NextBlock.scale)
                sprite:setVisible(spriteInfo.NextBlock.isVisible)
                sprite:setColor({r = 250, g = 170, b = 250})
                sprite:setPosition(cc.p(positionX + (i - 1) * 28, positionY + (j - 1) * 28))
                sprite:addTo(layerPlay)
                local util = MVCManager:getUtils("Block")
                --nextMap[k][util:makeKey(i, j)] = sprite
            end
        end
        positionY = positionY + 140 -- 用方块填充next区域的上半部分
    end
    layerPlay:addTo(scene)
end

---------------------------------------------------------
--- 刷新整个页面
---------------------------------------------------------
function GameLayer:updateModel(model)
    for i, v in ipairs(model.gameArea) do
        if v == 1 then
            
        end
    end
end

return GameLayer