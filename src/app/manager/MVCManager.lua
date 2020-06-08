local MVCManager = {}

MVCManager.modelList = {}
MVCManager.controllerList = {}
MVCManager.utilsList = {}

-----------------------------------------
--- 通过反射机制获取Model对象
-----------------------------------------
function MVCManager:getModel(modelName)
    local model = self.modelList[modelName]
    if model == nil then
        local funStr = "return (" .. modelName .. "Model.view(\"" .. modelName .."\"))"
        model = loadstring(funStr)()
        self.modelList[modelName] = model
    end
    return model
end

-----------------------------------------
--- 通过反射机制获取Controller对象
-----------------------------------------
function MVCManager:getController(conName)
    local con = self.controllerList[conName]
    if con == nil then
        local funStr = "return (" .. conName .. "Controller.new(\"" .. conName .. "\"))"
        con = loadstring(funStr)()
        self.controllerList[conName] = con
    end
    return con
end

-----------------------------------------
--- 通过反射机制获取Utils对象
-----------------------------------------
function MVCManager:getController(utilName)
    local util = self.utilsList[utilName]
    if util == nil then
        local funStr = "return (" .. utilName .. "Controller.new(\"" .. utilName .. "\"))"
        util = loadstring(funStr)()
        self.controllerList[utilName] = util
    end
    return util
end

-----------------------------------------
--- 通过反射机制获取View类
-----------------------------------------
function MVCManager:getNewView(viewName)
    local funStr = "return (" .. viewName .. "View.new(\"" .. viewName .. "\"))"
    local view = loadstring(funStr)()
    return view
end

-----------------------------------------
--- 删除视图绑定
-----------------------------------------
function MVCManager:cleanViewBind(viewName)
    for _, v in pair(self.modelList) do
        v:removeViewBind(viewName)
    end
end

return MVCManager