--����ȫ�ֱ����� table��nil ����һ��"ɾ��"���ã���ȫ�ֱ������� table ����ı�����һ�� nil ֵ����ͬ�ڰ�����ɾ����ִ����������֪��

tab1 = {key1="key1",key2="key2","key3"}
for k,v in pairs(tab1) do
 print(k .. "-" .. v)
end

tab1.key1=nil

for k,v in pairs(tab1) do
 print(k .. "-" .. v)
end

--��ͬ���������Ե������ 0 ��Ϊ����ĳ�ʼ�������� Lua ����Ĭ�ϳ�ʼ����һ���� 1 ��ʼ��

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
