# def binary_search(object, array)
# 	midpoint = array.length / 2
# 	if array[midpoint] == object
# 		midpoint
# 	elsif object < array[midpoint]
# 		new_array = array[0..midpoint]
# 		p midpoint
# 		binary_search(object, new_array)
# 	elsif object > array[midpoint]
# 		old_array=array[0..midpoint]
# 		discarded_elements = old_array.length
# 		new_array = array[midpoint+1..-1]
# 		discarded_elements + midpoint
# 		binary_search(object, new_array)
# 	else
# 		"#{object} is not in array."
# 	end
# end





def binary_search(object, array)
	midpoint = array.length / 2
	if object == array[midpoint]
		return midpoint
	elsif object > array[-1]
		return nil
	elsif object < array[0]
		return nil
	end

	if object < array[midpoint]
		binary_search(object, array[0...midpoint])
	elsif object > array[midpoint]
		array[0...midpoint].length + binary_search(object, array[midpoint..-1])
	end
end



