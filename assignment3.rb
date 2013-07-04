 #!/usr/bin/env ruby
 puts "input a number"
 num=gets.to_i #xyz
 a=num%100
 z=a%10
 y=a/10
 x=num/100
 ones= ["","I","II","III","IV","V","VI","VII","VIII","IX"]
  tens= ["","X","XX","XXX","XL","L","LX","LXX","LXXX","XC"]
 hundreds= ["","C","CC","CCC","CD","D","DC","DCC","DCCC","CM"]
 print hundreds[x], tens[y], ones[z]