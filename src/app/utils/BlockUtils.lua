local BlockUtils = class("BlockUtils")

-----------------------------------
--- 一维数组转二维数组，针对游戏区域
-----------------------------------
local function GameAreaController:makeKey(x, y)
    return x * 12 + y
end

-----------------------------------
--- 格子转下标
-----------------------------------
local function GameAreaController:grid2Pos(x, y)
    local positionX = origin.x + GAME_SCENE_WIDTH / 2 + x * 
end

return BlockUtils