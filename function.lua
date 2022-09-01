function factorial1(n)
 if n == 0 then
   return 1
 else
   return factorial1(n-1)*n
 end
end

print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))


function testFun(tab, fun)
 for k, v in pairs(tab) do
   print(fun(k, v))
 end
end



tab1 = {key1 = "key1", key2 = "key2"};
testFun(tab1,
function(key,val) --ÄäÃûº¯Êı
	return key .. "=" .. val;
end
);
