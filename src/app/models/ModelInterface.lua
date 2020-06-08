-- 数据层接口，定义数据类的通用方法
local ModelInterface = class("ModelInterface")

function ModelInterface:ctor(name)
    self.updateList = {} -- 更新视图列表
    self.name = name     -- 数据名称
    self.init()          -- 数据初始化，在子类中定义使用
end

-- 注册需监听模型的数据
function ModelInterface:registerView(viewName)
    self.updateList[view.name] = view
    return self
end

-- 删除监听绑定
function ModelInterface:removeViewBind(viewName)
    if self.updateList[viewName] ~= nil then
        self.updateList[viewName] = nil
    end
end

-- 数据初始化(自类)
function ModelInterface:init()
    print("init")
end

-- 更新方法
function ModelInterface:update()
    for _, view in pair(self.updateList) do
        view:modelUpdate(self)
    end
end

return ModelInterface