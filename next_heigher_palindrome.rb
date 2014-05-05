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
			if test_num[mid-1-count] < 9 
					#puts mid-2-count
				test_num[mid-1-count] = test_num[mid-1-count] + 1      #incrementing the middle numbers and going forward
				test_num[mid+count] = test_num[mid+count] + 1
				#puts "loop1#{test_num}"
				
				count = count + 1 if !test_num[mid+count+1].nil?
			elsif test_num[mid-1-count] >= 9 && !test_num[mid+count+1].nil?
					#puts "loop2"
				test_num[mid-1-count] = 0
				test_num[mid+count] = 0
				#print test_num
			else
				puts "new array is overflowing"
				new_array = [1,[0]*(test_num.size-1),1].flatten
				return new_array
			end

		end
	end

	if original_array.size.odd?
		mid =original_array.size/2
		count = 0 
		offset = 0

		while test_num.join().to_i <= original_num 				#incrementing the central number
			test_num[mid] = test_num[mid] + 1
			#print test_num
			if test_num[mid] >9 && test_num[mid-offset] > 9
				#puts "loop1"
				test_num[mid] = 0
				test_num[mid-offset] = 0
				test_num[mid+offset] = 0
				offset = offset + 1
				test_num[mid-offset] = test_num[mid-offset]+1 if test_num[mid-offset] < 9
				test_num[mid+offset] = test_num[mid+offset]+1 if test_num[mid-offset] < 9
			elsif test_num[mid] > 9 && test_num[mid-offset] < 9
				#puts "loop2"
				test_num[mid] = 0
				test_num[mid-offset] = test_num[mid-offset]+1 if  test_num[mid-offset] < 9
				test_num[mid+offset] = test_num[mid+offset]+1 if test_num[mid-offset] < 9
			elsif test_num[mid+offset+1].nil? && test_num[mid] >= 9 && test_num[mid-offset] >= 9
				#puts test_num[mid+offset+1]
				puts "new array is over flowing"
				new_array = [1,[0]*(test_num.size-1),1].flatten
				return new_array
			else
				next
			end
		end
	end
	puts ""
	test_num

end

puts "Enter array of intergers seperated by comma like 2,3,4,5"  #comment these 5 lines for disabling user input
number = gets								#comment these 5 lines for disabling user input
num = number.split(",")					#comment these 5 lines for disabling user input
num = num.collect {|x| x.to_i}				#comment these 5 lines for disabling user input
print "#{num} => #{find_next_palindrome(num)}\n"				#comment these 5 lines for disabling user input

#num = number.to_s.split("")
puts "some more test data------------------"
print "next heigher palindrome : #{find_next_palindrome([1,2,3,7,7,])}\n"
print "next heigher palindrome : #{find_next_palindrome([1,2])}\n"
print "next heigher palindrome : #{find_next_palindrome([1,2,3,7])}\n"
puts find_next_palindrome([1,"2"])
puts find_next_palindrome(["1avavvvv",2])
puts find_next_palindrome([13434,2])


	