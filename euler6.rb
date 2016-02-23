arr= (1..100).to_a
sum_of_square= arr.inject{|sum,x| sum + x**2 }
square_of_sum=arr.inject{|sum,x| sum + x}**2

puts square_of_sum-sum_of_square
