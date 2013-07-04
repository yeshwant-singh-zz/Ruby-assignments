 #!/usr/bin/env ruby
 def givenum(num)
 my_array=(0..num)
 my_array.each {|x| 
 
 if x%3==0 && x%5==0
 puts "fizz-buzz"
 elsif x%3==0
 puts "fizz" 
 elsif x%5==0
 puts "buzz" 
 else
 puts x
 end
 }
  end
  givenum(100) 
  