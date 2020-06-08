-------------------------------------------------------
--- 俄罗斯方块的方块数据
-------------------------------------------------------
local BlockModel = class("BlockModel")

local BlockModel.BLOCK_SIZE = 27.89

-- 枚举方块形状,包括旋转后的形状
local BlockModel.squareBlock = {
    [1] = {
        {1, 1, 0, 0},
        {1, 1, 0, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0}
    },
    [2] = [1],
    [3] = [1],
    [4] = [1]
}

local BlockModel.rectangleBlock = {
    [1] = {
        {0, 1, 0, 0},
        {0, 1, 0, 0},
        {0, 1, 0, 0},
        {0, 1, 0, 0}
    },
    [2] = {
        {0, 0, 0, 0},
        {1, 1, 1, 1},
        {0, 0, 0, 0},
        {0, 0, 0, 0}
    },
    [3] = [1],
    [4] = [2]
}

local BlockModel.tBlock = {
    [1] = {
        {1, 1, 1, 0},
        {0, 1, 0, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0}
    },
    [2] = {
        {0, 1, 0, 0},
        {1, 1, 0, 0},
        {0, 1, 0, 0},
        {0, 0, 0, 0}
    },
    [3] = {
        {0, 1, 0, 0},
        {1, 1, 1, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0}
    },
    [4] = {
        {1, 0, 0, 0},
        {1, 1, 0, 0},
        {1, 0, 0, 0},
        {0, 0, 0, 0}
    }
}

local BlockModel.lBlockFront = {
    [1] = {
        {0, 1, 0, 0},
        {0, 1, 0, 0},
        {0, 1, 1, 0},
        {0, 0, 0, 0}
    },
    [2] = {
        {1, 1, 1, 0},
        {1, 0, 0, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0}
    },
    [3] = {
        {1, 1, 0, 0},
        {0, 1, 0, 0},
        {0, 1, 0, 0},
        {0, 0, 0, 0}
    },
    [4] = {
        {0, 0, 1, 0},
        {1, 1, 1, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0}
    }
}

local BlockModel.lBlockBack = {
    [1] = {
        {0, 1, 0, 0},
        {0, 1, 0, 0},
        {1, 1, 0, 0},
        {0, 0, 0, 0}
    },
    [2] = {
        {1, 0, 0, 0},
        {1, 1, 1, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0}
    },
    [3] = {
        {0, 1, 1, 0},
        {0, 1, 0, 0},
        {0, 1, 0, 0},
        {0, 0, 0, 0}
    },
    [4] = {
        {1, 1, 1, 0},
        {0, 0, 1, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0}
    }
}

local BlockModel.zBlock = {
    [1] = {
        {0, 1, 1, 0},
        {1, 1, 0, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0}
    },
    [2] = {
        {0, 1, 0, 0},
        {0, 1, 1, 0},
        {0, 0, 1, 0},
        {0, 0, 0, 0}
    },
    [3] = [1],
    [4] = [2]
}


local BlockModel.sBlock = {
    [1] = {
        {1, 1, 0, 0},
        {0, 1, 1, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0}
    },
    [2] = {
        {0, 1, 0, 0},
        {1, 1, 0, 0},
        {1, 0, 0, 0},
        {0, 0, 0, 0}
    },
    [3] = [1],
    [4] = [2]
}

--------------------------------
--- 初始化七种方块类型，有需要可继续添加
--------------------------------
function BlockModel:init()
    BlockModel.blocks["squareBlock"] = BlockModel.squareBlock, 
    BlockModel.blocks["rectangleBlock"] = BlockModel.rectangleBlock, 
    BlockModel.blocks["tBlock"] = BlockModel.tBlock, 
    BlockModel.blocks["lBlockFront"] = BlockModel.lBlockFront, 
    BlockModel.blocks["lBlockBack"] = BlockModel.lBlockBack, 
    BlockModel.blocks["zBlock"] = BlockModel.zBlock, 
    BlockModel.blocks["sBlock"] = BlockModel.sBlock
end

function BlockModel:getBlockSize()
    return BlockModel.BLOCK_SIZE
end

---------------------------------
--- 按类型获取方块
---@param type 字符串类型，按输入的方块名称获取方块
---------------------------------
function BlockModel:getBlockByType(type)
    return blocks[type][1]
end

---------------------------------
--- 按类型获取方块
--- @param block 方块的table
--- @param state 方块当前的状态
---------------------------------
function BlockModel:rotaleBlock(type, state)
    return blocks[type][state + 1]
end

return BlockModel