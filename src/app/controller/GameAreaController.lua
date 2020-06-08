local GameAreaController = class("GameAreaController", ControllerInterface)

local GAME_AREA_HEIGH = 22 -- y轴上的格子数
local GAME_AREA_WIDTH = 12 -- x轴上的格子数

local GAME_SCENE_HEIGHT = GAME_AREA_HEIGH * 27.89 + 258 -- 游戏显示区域高度
local GAME_SCENE_WIDTH = GAME_AREA_WIDTH * 27.89 +250.75 -- 游戏显示区域宽度

local origin = { -- 游戏区域起始坐标
    x = 250.75 + 27.89, 
    y = 258
}

function GameAreaController:controlBlock(key)
    if key == 26 then
        -- 左移
    else if key == 27 then
        -- 右移
    else if key == 29 then
        -- 下移
    else if key == 149 then
        -- 旋转方块
    end
end

function replaceNextBlock()
    
end