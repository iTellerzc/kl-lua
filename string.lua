type=[[<html><p>hello world</p></html>]]
print(type)
print(#type)


string3 = [["Hello World"]]
print(string3)


--string.gsub(mainString,findString,replaceString,num)  ���ַ������滻��mainString ΪҪ�������ַ����� findString Ϊ���滻���ַ���replaceString Ҫ�滻���ַ���num �滻���������Ժ��ԣ���ȫ���滻��
print(string.gsub("aaaa","a","z",3))

print(string.gsub("hello, up-down!", "%A", "."))

-- string.find (str, substr, [init, [plain]])
-- ��һ��ָ����Ŀ���ַ��� str ������ָ�������� substr������ҵ���һ��ƥ����Ӵ����ͻ᷵������Ӵ�����ʼ�����ͽ����������������򷵻� nil��-- init ָ������������ʼλ�ã�Ĭ��Ϊ 1������һ����������ʾ�Ӻ���ǰ�����ַ�������
-- plain ��ʾ�Ƿ���������ʽƥ�䡣

--����ʵ�������ַ��� "Lua" ����ʼ�����ͽ�������λ�ã�

print(string.find("Hello Lua user", "Lua", 1, false))

--string.char(arg) �� string.byte(arg[,int])
--char ����������ת���ַ������ӣ� byte ת���ַ�Ϊ����ֵ(����ָ��ĳ���ַ���Ĭ�ϵ�һ���ַ�)��
--7    9

--string.rep(string, n)
--�����ַ���string��n������
print(string.rep('abcd',2))

--..�����ַ���


--string.gmatch(str, pattern)
--����һ��������������ÿһ�ε����������������һ�����ַ��� str �ҵ�����һ������ pattern �������Ӵ���������� pattern �������ַ���û���ҵ���������������nil��
for word in string.gmatch("Hello Lua user", "%a+") do print(word) end


--string.match(str, pattern, init)
--string.match()ֻѰ��Դ�ִ�str�еĵ�һ�����. ����init��ѡ, ָ����Ѱ���̵����, Ĭ��Ϊ1��
--�ڳɹ����ʱ, ������������Ա��ʽ�е����в�����; ���û�����ò�����, �򷵻���������ַ���. ��û�гɹ������ʱ, ����nil��
print(string.match("I have 2 questions for you.", "%d+ %a+"))
print(string.match("I have 2 questions for you.", "(%d+) (%a+)"))

print(string.match("flaaap","()aa()"))
