 #!/usr/bin/env ruby
 def givenum(num)
 (0..num).each {|x| 
 case 
  when x%3==0 && x%5==0 then puts "fizz-buzz"
  when x%3==0 then puts "fizz" 
when x%5==0 then puts "buzz" 
 else puts x
 end
 }
  end
  givenum(100) 
  