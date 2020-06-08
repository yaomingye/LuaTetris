local GameAreaController = class("GameAreaController", ControllerInterface)

local GAME_AREA_HEIGH = 22 -- y轴上的格子数
local GAME_AREA_WIDTH = 12 -- x轴上的格子数

local GAME_SCENE_HEIGHT = GAME_AREA_HEIGH * 27.89 + 258 -- 游戏显示区域高度
local GAME_SCENE_WIDTH = GAME_AREA_WIDTH * 27.89 +250.75 -- 游戏显示区域宽度

local origin = { -- 游戏区域起始坐标
    x = 250.75 + 27.89, 
    y = 258
}

---------------------------------------------
--- 根据输入的键控制方块，使用方向键控制
---------------------------------------------
function GameAreaController:controlBlock(key)
    if key == 26 then -- 左方向键
        -- 左移
    else if key == 27 then -- 右方向键
        -- 右移
    else if key == 29 then -- 下方向键
        -- 下移
    else if key == 28 then -- 上方向键
        -- 旋转方块
    end
end

---------------------------------------------
--- 方块粘合获取新方块时，修改next区域的方块
---------------------------------------------
function GameAreaController:replaceNextBlock()
    
end

---------------------------------------------------------
--- 根据索引，消除一行方块时，修改GameAreaModel中，方块table
--- @param index 消除的行的索引
---------------------------------------------------------
function GameAreaController:clearLineBlock(index)
    -- 消除一行方块的数据
end

---------------------------------------------------------
--- 方块溢出时，清除所有方块
--- @param index 消除的行的索引
---------------------------------------------------------
function GameAreaController:clearAllBlock()
    -- 消除一行方块的数据
end

