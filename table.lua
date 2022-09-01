--对于全局变量和 table，nil 还有一个"删除"作用，给全局变量或者 table 表里的变量赋一个 nil 值，等同于把它们删掉，执行下面代码就知：

tab1 = {key1="key1",key2="key2","key3"}
for k,v in pairs(tab1) do
 print(k .. "-" .. v)
end

tab1.key1=nil

for k,v in pairs(tab1) do
 print(k .. "-" .. v)
end

--不同于其他语言的数组把 0 作为数组的初始索引，在 Lua 里表的默认初始索引一般以 1 开始。

local tab1 = {}
print(tab1)

local tab2 = {"apple", "1", 2, 3}
for k,v in pairs(tab2) do
 print(k .. "-" .. v)
end

a3={}
for i=1,10 do
 a3[i] = i
 print(a3[i])
end

print(type(tab1))


--table  函数
--concat(table,sep,start,end)
--insert(table,pos,value)
--maxn(table) 5.2后版本已移除该函数
--remove(table,pos)
--sort(table,comparator)

--当我们获取 table 的长度的时候无论是使用 # 还是 table.getn 其都会在索引中断的地方停止计数，而导致无法正确取得 table 的长度。替代方案

function table_leng(t)
  local leng=0
  for k, v in pairs(t) do
    leng=leng+1
  end
  return leng;
end
