--coroutine 协同程序
--线程和协同程序区别
--线程与协同程序的主要区别在于，一个具有多个线程的程序可以同时运行几个线程，而协同程序却需要彼此协作的运行。
--在任一指定时刻只有一个协同程序在运行，并且这个正在运行的协同程序只有在明确的被要求挂起的时候才会被挂起。
--协同程序有点类似同步的多线程，在等待同一个线程锁的几个线程有点类似协同。

--方法	描述
--coroutine.create()	创建 coroutine，返回 coroutine， 参数是一个函数，当和 resume 配合使用的时候就唤醒函数调用
--coroutine.resume()	重启 coroutine，和 create 配合使用
--coroutine.yield()	挂起 coroutine，将 coroutine 设置为挂起状态，这个和 resume 配合使用能有很多有用的效果
--coroutine.status()	查看 coroutine 的状态
--注：coroutine 的状态有三种：dead，suspended，running，具体什么时候有这样的状态请参考下面的程序
--coroutine.wrap（）	创建 coroutine，返回一个函数，一旦你调用这个函数，就进入 coroutine，和 create 功能重复
--coroutine.running()	返回正在跑的 coroutine，一个 coroutine 就是一个线程，当使用running的时候，就是返回一个 corouting 的线程号

co = coroutine.create(
	function(i)
		print(i)
	end
)

coroutine.resume(co, 1)
print(coroutine.status(co))

print('-----------------')

co = coroutine.wrap(
	function(i)
		print(i)
	end
)
co(2)

print('--------------')

co2 = coroutine.create(
    function()
        for i=1,10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))  --running
                print(coroutine.running()) --thread:XXXXXX
            end
            coroutine.yield()
        end
    end
)

coroutine.resume(co2) --1
coroutine.resume(co2) --2
coroutine.resume(co2) --3


print(coroutine.status(co2))   -- suspended
print(coroutine.running())

print("----------")


function foo (a)
    print("foo 函数输出", a)
    return coroutine.yield(2 * a) -- 返回  2*a 的值
end

co = coroutine.create(function (a , b)
    print("第一次协同程序执行输出", a, b) -- co-body 1 10
    local r = foo(a + 1)

    print("第二次协同程序执行输出", r)
    local r, s = coroutine.yield(a + b, a - b)  -- a，b的值为第一次调用协同程序时传入

    print("第三次协同程序执行输出", r, s)
    return b, "结束协同程序"                   -- b的值为第二次调用协同程序时传入
end)

print("main", coroutine.resume(co, 1, 10)) -- true, 4
print("--分割线----")
print("main", coroutine.resume(co, "r")) -- true 11 -9
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- true 10 end
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- cannot resume dead coroutine
print("---分割线---")


--以上实例接下如下：

--调用resume，将协同程序唤醒,resume操作成功返回true，否则返回false；
--协同程序运行；
--运行到yield语句；
--yield挂起协同程序，第一次resume返回；（注意：此处yield返回，参数是resume的参数）
--第二次resume，再次唤醒协同程序；（注意：此处resume的参数中，除了第一个参数，剩下的参数将作为yield的参数）
--yield返回；
--协同程序继续运行；
--如果使用的协同程序继续运行完成后继续调用 resume方法则输出：cannot resume dead coroutine

--resume和yield的配合强大之处在于，resume处于主程中，它将外部状态（数据）传入到协同程序内部；而yield则将内部的状态（数据）返回到主程中。
