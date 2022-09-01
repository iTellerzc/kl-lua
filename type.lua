--nil 这个最简单，只有值nil属于该类，表示一个无效值（在条件表达式中相当于false）。
--boolean 包含两个值：false和true。
--number 表示双精度类型的实浮点数
--string 	字符串由一对双引号或单引号来表示
--function 由 C 或 Lua 编写的函数
--userdata 表示任意存储在变量中的C数据结构
--thread 表示执行的独立线路，用于执行协同程序
--table Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字、字符串或表类型。在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。
--Lua 把 false 和 nil 看作是 false，其他的都为 true，数字 0 也是 true:

print(type('hello'))
print(type(1.2))
print(type(nil))
print(type(true))
print(type(type))
print(type(type(X)))

print(type(X)==nil)

print(type(X)=='nil')
