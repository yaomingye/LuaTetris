local AppBase = class("AppBase") -- 该类用于加载配置，和设置初始界面

----------------------------------------------------------------
-- run函数
-- @param configs 配置信息table
----------------------------------------------------------------
function AppBase:ctor(configs)
    self.configs_ = {
        viewsRoot  = "app.views",
        modelsRoot = "app.models",
        defaultSceneName = "MainScene",
    }
	-- 遍历configs table装载配置
    for k, v in pairs(configs or {}) do
        self.configs_[k] = v
    end

    if type(self.configs_.viewsRoot) ~= "table" then
        self.configs_.viewsRoot = {self.configs_.viewsRoot}
    end
    if type(self.configs_.modelsRoot) ~= "table" then
        self.configs_.modelsRoot = {self.configs_.modelsRoot}
    end

	-- 如果是调试模式，就输出配置信息
    if DEBUG > 1 then
        dump(self.configs_, "AppBase configs")
    end

	-- 设置FPS的状态为显示
    if CC_SHOW_FPS then
        cc.Director:getInstance():setDisplayStats(true)
    end

    -- event
    self:onCreate()
end

----------------------------------------------------------------
-- 运行初始界面
-- @param initSceneName 初始化场景名称
----------------------------------------------------------------
function AppBase:run(initSceneName)
    initSceneName = initSceneName or self.configs_.defaultSceneName
    self:enterScene(initSceneName)
end

----------------------------------------------------------------
-- 导入场景
-- @param sceneName 场景名称
-- @param transition 
-- @param time 
-- @param more 
----------------------------------------------------------------
function AppBase:enterScene(sceneName, transition, time, more)
    local view = self:createView(sceneName)
    view:showWithScene(transition, time, more)
    return view
end

----------------------------------------------------------------
-- 显示界面
-- @param name 场景名称
----------------------------------------------------------------
function AppBase:createView(name)
    for _, root in ipairs(self.configs_.viewsRoot) do-- 遍历view文件夹内的lua文件
        local packageName = string.format("%s.%s", root, name) -- 路径和场景文件合并
        local status, view = xpcall(function()--try/catch
                return require(packageName)
            end, function(msg)
            if not string.find(msg, string.format("'%s' not found:", packageName)) then
                print("load view error: ", msg)
            end
        end)
        local t = type(view)
        if status and (t == "table" or t == "userdata") then
            return view:create(self, name) -- 若场景格式符合要求，就创建场景
        end
    end
    error(string.format("AppBase:createView() - not found view \"%s\" in search paths \"%s\"",
        name, table.concat(self.configs_.viewsRoot, ",")), 0)
end

----------------------------------------------------------------
-- AppBase事件构造函数
----------------------------------------------------------------
function AppBase:onCreate()
end

return AppBase
