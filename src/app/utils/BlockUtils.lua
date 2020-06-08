local BlockUtils = class("BlockUtils")

-----------------------------------
--- 一维数组转二维数组，针对游戏区域
-----------------------------------
function BlockUtils:makeKey(x, y)
    return (x - 1) * 12 + y
end

-----------------------------------
--- 格子转下标
-----------------------------------
-- function BlockUtils:grid2Pos(x, y)
--     local positionX = origin.x + GAME_SCENE_WIDTH / 2 + x * 
-- end

return BlockUtils