array = {'iTeller','zc'}
for key,value in ipairs(array) do
	print(key,value)
end

array = {nil,'zc'}
for key,value in ipairs(array) do
	print(key,value)
end


--迭代函数、状态常量、控制变量。

--无状态迭代器

function square(iteratorMaxCount, currentNumber)
 if currentNumber < iteratorMaxCount
 then
	currentNumber = currentNumber + 1
 return currentNumber, currentNumber * currentNumber
 end
end

for i, n in square, 3, 0
do
	print(i,n)
end

