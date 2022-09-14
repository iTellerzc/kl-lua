--error.lua
--function add(a,b)
   --return a+b
--end

--add(10)


local function add2(a,b)
   assert(type(a) == "number", "a 不是一个数字")
   assert(type(b) == "number", "b 不是一个数字")
   return a+b
end

add2(10)

--pcall

--xpcall

--debug
