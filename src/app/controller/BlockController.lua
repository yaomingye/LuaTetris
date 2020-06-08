-------------------------------------------------------
--- 俄罗斯方块的方块控制
-------------------------------------------------------
local BlockController = class("BlockController", ControllerInterface)

local state = 1
local currentBlock = {}
local currentBlockType = nil

local function BlockController:initCurrentBlock()

end

function BlockController:ctor(name)
    self.name = name
    initCurrentBlock()
end

function BlockController:rotaleCurrentBlock()
    local model = MVCManager:getModel(BlockModel)
    currentBlock = model.rotaleBlock(currentBlockType, state)
    state = state + 1
end

function BlockController:moveBlock()
    
end

function 

return BlockController