--metatable
--˫�»���
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


-- __indexԪ���� �����

--Lua ����һ����Ԫ��ʱ�Ĺ�����ʵ�������� 3 ������:

--1.�ڱ��в��ң�����ҵ������ظ�Ԫ�أ��Ҳ��������
--2.�жϸñ��Ƿ���Ԫ�����û��Ԫ������ nil����Ԫ���������
--3.�ж�Ԫ����û�� __index ��������� __index ����Ϊ nil���򷵻� nil����� __index ������һ�������ظ� 1��2��3����� __index ������һ���������򷵻ظú����ķ���ֵ��

mytable2 = setmetatable({key1='value'},{
__index={key2="self"}
})
print(mytable2.key1,mytable2.key2,mytable2.key3)

-- __newindex �����
--��������һ��ȱ�ٵ�������ֵ���������ͻ����__newindex Ԫ��������������������������������и�ֵ������

mytable4 = {}

mytable3=setmetatable({key1="key1"},{__newindex=mytable4})

print(mytable3.key1)
mytable3.newkey="newValue"
print(mytable3.newkey,mytable4.newkey)

mytable3.key1="key2"
print(mytable3.key1,mytable4.key1)

--����ʵ���б�������Ԫ���� __newindex���ڶ�����������newkey����ֵʱ��mytable.newkey = "��ֵ2"���������Ԫ�������������и�ֵ����������Ѵ��ڵ���������key1���������и�ֵ����������Ԫ���� __newindex��

--rawset �����
mytable = setmetatable({key1 = "value1"}, {
    __newindex = function(mytable, key, value)
        rawset(mytable, key, "\""..value.."\"")
    end
})

mytable.key1 = "new value"
mytable.key2 = 4

print(mytable.key1,mytable.key2)

--����� __add

function table_maxn(t)
	local mn = 0
	for k, v in ipairs(t) do
		if mn < k then
		  mn = k
		end
	end
	return mn
end

-- ������Ӳ���
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

-- __callԪ���� ����һ��ֵʱ���á�����ʵ����ʾ�˼������Ԫ�صĺͣ�

-- ����Ԫ����__call
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
