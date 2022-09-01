array = {'iTeller','zc'}
for key,value in ipairs(array) do
	print(key,value)
end

array2 = {nil,'zc'}
for key,value in ipairs(array2) do
	print(key,value)
end


--����������״̬���������Ʊ�����

--��״̬������

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

--�Զ��� ipairsʵ��

function iter (a, i)
    i = i + 1
    local v = a[i]
    if v then
       return i, v
    end
end

function ipairs (a)
    return iter, a, 0
end


--��״̬������
function elementIterator(collection)
	local index = 0
	count=#collection
	return function()
		index = index +1
		if index <= count then
			return collection[index]
		end
	end
end

for element in elementIterator(array) do
	print(element)
end
