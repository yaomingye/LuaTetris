local GameAreaModel = class("GameAreaModel", ModelInterface)

local gameArea = {} -- 方块显示区域
local topNextArea = {} -- 上半部分next方块显示区域
local bottomNextArea = {} -- 下半部分next方块显示区域
local score = 0 -- 分数记录
local TOTAL_BLOCKS = 22 * 12
local TOTAL_NEXT_BLOCKS = 4*4

local function GameAreaModel:init()
    for i = 1, TOTAL_BLOCKS do
        gameArea[i] = 0
    end
    for i = 1, TOTAL_NEXT_BLOCKS do
        topNextArea[i] = 0
        bottomNextArea[i] = 0
    end
end

function GameAreaModel:clearGameAreaBlock(index)
    gameArea[index] = 0;
end

function GameAreaModel:clearAllNextBlock(index)
    for i = 1, TOTAL_NEXT_BLOCKS do
        topNextArea[i] = 0
        bottomNextArea[i] = 0
    end
end

function GameAreaModel:setTopNextBlock(block)
    for i = #topNextArea, 1 do
        table.remove(topNextArea, i)
    end
    table.insert(topNextArea, block)
end

function GameAreaModel:setBottomNextBlock(block)
    for i = #bottomNextArea, 1 do
        table.remove(bottomNextArea, i)
    end
    table.insert(bottomNextArea, block)
end