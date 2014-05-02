# code to find next heigher palindrome
# algo : first find the nearest smaller palindrome by swapping heigher digits
# then from the mid portion increment the number till you get heigher number 
# author: yeshwant



def is_palindrome?(number)
	number.to_s.reverse == number.to_s
end


def find_next_palindrome(test_num)
	test_num.each do |digit|
		case
			when digit.class == String
			return "You passed a string in array\n"
															#handling cases
			when digit < 0
			return "you provided negative number\n"

			when digit/10 != 0
			return "you provided two digit in array\n"
			else 
				
		end
	end
	original_array = test_num
	original_num = original_array.join().to_i
	size = original_array.size
	
	count = 0
	while !is_palindrome?(test_num.join().to_i)
		last = size -1-count
		temp = test_num[count]
		if test_num[count] != test_num[last]
			test_num[count] = test_num[last]
			if test_num.join().to_i > original_num 	# finding the shorter palindrome number 
				test_num[count]= temp
				test_num[last]=temp
			end
		end
		count = count.next
	end

	print "shorter palindrome number #{test_num}"	

	if original_array.size.even?
		mid =original_array.size/2
		count = 0 
		while test_num.join().to_i <= original_num 
			test_num[mid-1-count] = test_num[mid-1-count] + 1      #incrementing the middle numbers
			
			test_num[mid+count] = test_num[mid+count] + 1
			count = count + 1
		end
	end

	if original_array.size.odd?
		mid =original_array.size/2
		count = 0 

		while test_num.join().to_i <= original_num 				#incrementing the central number
			test_num[mid] = test_num[mid] + 1
		end
	end
	puts ""
	test_num

end

puts "Enter array of intergers seperated by comma like 2,3,4,5"  #comment these 5 lines for disabling user input
number = gets								#comment these 5 lines for disabling user input
num = number.split(",")					#comment these 5 lines for disabling user input
num = num.collect {|x| x.to_i}				#comment these 5 lines for disabling user input
print find_next_palindrome(num)				#comment these 5 lines for disabling user input

#num = number.to_s.split("")
puts "some more test data------------------"
print "next heigher palindrome is: #{find_next_palindrome([1,2,3,7,7,])}\n"
print "next heigher palindrome is: #{find_next_palindrome([1,2])}\n"
print "next heigher palindrome is: #{find_next_palindrome([1,2,3,7])}\n"
puts find_next_palindrome([1,"2"])
puts find_next_palindrome(["1avavvvv",2])
puts find_next_palindrome([13434,2])


	