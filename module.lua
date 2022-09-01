--module.lua
module = {}

module.constant = "自定义常量"

function module.func1()
	io.write("这是一个公有函数!\n")
end

local function func2()
	print("这是一个私有函数")
end

function module.func3()
	func2()
end

return module
