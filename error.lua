--error.lua
--function add(a,b)
   --return a+b
--end

--add(10)


local function add2(a,b)
   assert(type(a) == "number", "a ����һ������")
   assert(type(b) == "number", "b ����һ������")
   return a+b
end

add2(10)

--pcall

--xpcall

--debug
