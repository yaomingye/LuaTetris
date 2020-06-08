local ViewInterface = class("ViewInterface", cc.Node)

function ViewInterface:ctor(name)
    self.name = name
    self:onCreate()
    self:bind()
    -- 这里注意下，先调用onCreate然后调用bind，意义在于：先初始化界面UI，然后进行数据绑定，绑定后刷新
    self:enableNodeEvent()
end
---------------------------------
--- 初始化界面
---------------------------------
function ViewInterface:onCreate()    
end

---------------------------------
--- 初始化一些界面绑定
---------------------------------
function ViewInterface:bind()
end

---------------------------------
--- 界面退出，删除绑定
---------------------------------
function ViewInterface:onExit()
    -- 调用mvcManager清楚绑定
end

---------------------------------
--- 模块更新
---------------------------------
function ViewInterface:modelUpdate(model)
end

---------------------------------
--- 加载场景
---------------------------------
function ViewInterface:scene()
end

---------------------------------
--- 显示场景
---------------------------------
function ViewInterface:runScene()
    display.runScene(self.scene)
end