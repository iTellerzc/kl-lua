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

print(type(tab1))


--table  ����
--concat(table,sep,start,end)
--insert(table,pos,value)
--maxn(table) 5.2��汾���Ƴ��ú���
--remove(table,pos)
--sort(table,comparator)

--�����ǻ�ȡ table �ĳ��ȵ�ʱ��������ʹ�� # ���� table.getn �䶼���������жϵĵط�ֹͣ�������������޷���ȷȡ�� table �ĳ��ȡ��������

function table_leng(t)
  local leng=0
  for k, v in pairs(t) do
    leng=leng+1
  end
  return leng;
end
