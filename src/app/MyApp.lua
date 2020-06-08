local MyApp = class("MyApp", cc.load("mvc").AppBase)

----------------------------------------------------------------
-- MyApp的构造函数
----------------------------------------------------------------
function MyApp:onCreate()
    math.randomseed(os.time())
end

return MyApp
