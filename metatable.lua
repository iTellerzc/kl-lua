--metatable
--双下划线
other = {foo=3}
t=setmetatable({},{__index = other})
print(t.foo)

mytable = setmetatable({key1='value'},{
__index=function(mytable,key)
	if(key == "key2") then
		return "selfdifine"
	else
		return nil
	end
end
})

print(mytable.key1,mytable.key2,mytable.key3)


-- __index元方法 表访问

--Lua 查找一个表元素时的规则，其实就是如下 3 个步骤:

--1.在表中查找，如果找到，返回该元素，找不到则继续
--2.判断该表是否有元表，如果没有元表，返回 nil，有元表则继续。
--3.判断元表有没有 __index 方法，如果 __index 方法为 nil，则返回 nil；如果 __index 方法是一个表，则重复 1、2、3；如果 __index 方法是一个函数，则返回该函数的返回值。

mytable2 = setmetatable({key1='value'},{
__index={key2="self"}
})
print(mytable2.key1,mytable2.key2,mytable2.key3)

-- __newindex 表更新
--当你给表的一个缺少的索引赋值，解释器就会查找__newindex 元方法：如果存在则调用这个函数而不进行赋值操作。

mytable4 = {}

mytable3=setmetatable({key1="key1"},{__newindex=mytable4})

print(mytable3.key1)
mytable3.newkey="newValue"
print(mytable3.newkey,mytable4.newkey)

mytable3.key1="key2"
print(mytable3.key1,mytable4.key1)

--以上实例中表设置了元方法 __newindex，在对新索引键（newkey）赋值时（mytable.newkey = "新值2"），会调用元方法，而不进行赋值。而如果对已存在的索引键（key1），则会进行赋值，而不调用元方法 __newindex。

--rawset 表更新
mytable = setmetatable({key1 = "value1"}, {
    __newindex = function(mytable, key, value)
        rawset(mytable, key, "\""..value.."\"")
    end
})

mytable.key1 = "new value"
mytable.key2 = 4

print(mytable.key1,mytable.key2)

--表相加 __add

function table_maxn(t)
	local mn = 0
	for k, v in ipairs(t) do
		if mn < k then
		  mn = k
		end
	end
	return mn
end

-- 两表相加操作
mytable = setmetatable({ 1, 2, 3 }, {
  __add = function(mytable, newtable)
    for i = 1, table_maxn(newtable) do
      table.insert(mytable, table_maxn(mytable)+1,newtable[i])
    end
    return mytable
  end
})

secondtable = {4,5,6}

mytable = mytable + secondtable
        for k,v in ipairs(mytable) do
print(k,v)
end

-- __call元方法 调用一个值时调用。以下实例演示了计算表中元素的和：

-- 定义元方法__call
mytable = setmetatable({10}, {
  __call = function(mytable, newtable)
        sum = 0
        for i = 1, table_maxn(mytable) do
                sum = sum + mytable[i]
        end
    for i = 1, table_maxn(newtable) do
                sum = sum + newtable[i]
        end
        return sum
  end
})
newtable = {10,20,30}
print(mytable(newtable))
