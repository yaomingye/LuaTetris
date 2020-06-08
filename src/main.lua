cc.FileUtils:getInstance():setPopupNotify(false)

require "config" -- 加载config.lua，加载项目的配置文件
require "cocos.init" -- 加载cocos文件夹内的init.lua，对引擎初始化和配置

local function main()
    collectgarbage("collect")  
    -- 避免内存泄漏
    collectgarbage("setpause", 100)  
    collectgarbage("setstepmul", 5000)  
    
    require("app.MyApp"):create():run("MainScene") -- 加载app文件夹内的MyApp.lua文件，可通过传入table类型的参数实现应用配置
end

local status, msg = xpcall(main, __G__TRACKBACK__)
if not status then
    print(msg)
end