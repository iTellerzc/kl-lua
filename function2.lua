function max(num1, num2)
	if(num1 > num2) then
		result = num1;
	else
		result = num2;
	end

	return result;
end

print(max(2,3))


--我们可以将函数作为参数传递给函数
myprint = function(param)
 print("这是打印函数 - ## ", param, "##")
end

function add(num1, num2, functionPrint)
  result = num1 + num2;
  functionPrint(result);
end


myprint(10)

add(2,3,myprint)

s,e=string.find("c.abd.com","abd")
print(s,e)


function maximum(a)
	local mi = 1;
	local m = a[mi];
	for i,val in ipairs(a) do
		if(val > m) then
			mi = i;
			m = val;
		end
	end
	return mi,m
end

print(maximum({8,10,13,1,2}))

--可变函数
function add(...)
	local s = 0;
	--local args = {...}
	for i, val in ipairs{...} do
		s = s+ val;
	end
	return s
end

print(add(1,2,3,4))

--平均数
function average(...)
	local args = {...}
	result = 0
	for i,val in ipairs(args) do
		result = result + val
	end
	print('num:',#args)
	return result/#args
end

print('average:',average(1,2,3,4,6,7))

function fwrite(fmt, ...)
	return io.write(string.format(fmt,...))
end

fwrite('iTeller_zc\n')
fwrite('%d%d\n', 1, 2, 3)

function f(...)
	a = select(3,...)  -->从第三个位置开始，变量 a 对应右边变量列表的第一个参数
	print(a)
	print(select(3,...)) -->打印所有列表参数
	print(select('#',...))
end

f(0,1,2,3,4,5)
