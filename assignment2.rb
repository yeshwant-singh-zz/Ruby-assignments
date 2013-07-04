 #!/usr/bin/env ruby
 result=0
 (1...1000).each {|x|
 if x%3==0||x%5==0
 result=result+x
 end
 }
 puts result