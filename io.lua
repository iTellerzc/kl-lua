--��ģʽ

--��ֻ����ʽ��
file=io.open("test.lua","r")
--����Ĭ�������ļ�

io.input(file)
--��ȡ��һ��

print(io.read())
--�ر��ļ�
io.close(file)


-- �Ը��ӵķ�ʽ��ֻд�ļ�
file = io.open("test.lua", "a")

-- ����Ĭ������ļ�Ϊ test.lua
io.output(file)

-- ���ļ����һ����� Lua ע��
io.write("--  test.lua �ļ�ĩβע��")

-- �رմ򿪵��ļ�
io.close(file)



--ģʽ	����
--"*n"	��ȡһ�����ֲ�������������file.read("*n")
--"*a"	�ӵ�ǰλ�ö�ȡ�����ļ�������file.read("*a")
--"*l"��Ĭ�ϣ�	��ȡ��һ�У����ļ�β (EOF) ������ nil������file.read("*l")
--number	����һ��ָ���ַ��������ַ��������� EOF ʱ���� nil������file.read(5)

--io.tmpfile():����һ����ʱ�ļ���������ļ��Ը���ģʽ�򿪣��������ʱ�Զ�ɾ��

--io.type(file): ���obj�Ƿ�һ�����õ��ļ����

--io.flush(): ���ļ�д�뻺���е���������

--io.lines(optional file name): ����һ������������ÿ�ε��ý�����ļ��е�һ�����ݣ������ļ�βʱ�������� nil�������ر��ļ�

--��ȫģʽ ͨ��������Ҫ��ͬһʱ�䴦�����ļ���������Ҫʹ�� file:function_name ������ io.function_name ������

-- ��ֻ����ʽ���ļ�
file = io.open("test.lua", "r")

-- ����ļ���һ��
print(file:read())

-- �رմ򿪵��ļ�
file:close()

-- �Ը��ӵķ�ʽ��ֻд�ļ�
file = io.open("test.lua", "a")

-- ���ļ����һ����� Lua ע��
file:write("--test")

-- �رմ򿪵��ļ�
file:close()


--��������

--file:seek(optional whence, optional offset): ���úͻ�ȡ��ǰ�ļ�λ��,�ɹ��򷵻����յ��ļ�λ��(���ֽ�),ʧ���򷵻�nil�Ӵ�����Ϣ������ whence ֵ������:

--"set": ���ļ�ͷ��ʼ
--"cur": �ӵ�ǰλ�ÿ�ʼ[Ĭ��]
--"end": ���ļ�β��ʼ
--offset:Ĭ��Ϊ0
--��������file:seek()�򷵻ص�ǰλ��,file:seek("set")��λ���ļ�ͷ,file:seek("end")��λ���ļ�β�������ļ���С
--file:flush(): ���ļ�д�뻺���е���������

--io.lines(optional file name): ��ָ�����ļ� filename Ϊ��ģʽ������һ������������ÿ�ε��ý�����ļ��е�һ�����ݣ������ļ�βʱ�������� nil�����Զ��ر��ļ���
--����������ʱio.lines() <=> io.input():lines(); ��ȡĬ�������豸�����ݣ�������ʱ���ر��ļ�


for line in io.lines("test_io.lua") do
	print(line)

	end

-- ��ֻ����ʽ���ļ�
file = io.open("test_io.lua", "r")

file:seek("end",-5)
--file:seek("end")
--file:seek("set",3)
print(file:read("*a"))

-- �رմ򿪵��ļ�
file:close()
