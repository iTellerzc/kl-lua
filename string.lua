type=[[<html><p>hello world</p></html>]]
print(type)
print(#type)


string3 = [["Hello World"]]
print(string3)


--string.gsub(mainString,findString,replaceString,num)  在字符串中替换。mainString 为要操作的字符串， findString 为被替换的字符，replaceString 要替换的字符，num 替换次数（可以忽略，则全部替换）
print(string.gsub("aaaa","a","z",3))

print(string.gsub("hello, up-down!", "%A", "."))

-- string.find (str, substr, [init, [plain]])
-- 在一个指定的目标字符串 str 中搜索指定的内容 substr，如果找到了一个匹配的子串，就会返回这个子串的起始索引和结束索引，不存在则返回 nil。-- init 指定了搜索的起始位置，默认为 1，可以一个负数，表示从后往前数的字符个数。
-- plain 表示是否以正则表达式匹配。

--以下实例查找字符串 "Lua" 的起始索引和结束索引位置：

print(string.find("Hello Lua user", "Lua", 1, false))

--string.char(arg) 和 string.byte(arg[,int])
--char 将整型数字转成字符并连接， byte 转换字符为整数值(可以指定某个字符，默认第一个字符)。
--7    9

--string.rep(string, n)
--返回字符串string的n个拷贝
print(string.rep('abcd',2))

--..连接字符串


--string.gmatch(str, pattern)
--返回一个迭代器函数，每一次调用这个函数，返回一个在字符串 str 找到的下一个符合 pattern 描述的子串。如果参数 pattern 描述的字符串没有找到，迭代函数返回nil。
for word in string.gmatch("Hello Lua user", "%a+") do print(word) end


--string.match(str, pattern, init)
--string.match()只寻找源字串str中的第一个配对. 参数init可选, 指定搜寻过程的起点, 默认为1。
--在成功配对时, 函数将返回配对表达式中的所有捕获结果; 如果没有设置捕获标记, 则返回整个配对字符串. 当没有成功的配对时, 返回nil。
print(string.match("I have 2 questions for you.", "%d+ %a+"))
print(string.match("I have 2 questions for you.", "(%d+) (%a+)"))

print(string.match("flaaap","()aa()"))
