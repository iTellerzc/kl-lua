array={}
maxRows=3
maxColumns=3
for row=1, maxRows do
	for column=1, maxColumns do
		array[row*maxColumns+column] = row * column
	end
end

for row=1, maxRows do
	for column=1, maxColumns do
		print(array[row*maxColumns+column])
	end
end


