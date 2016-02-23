require 'mathn'
puts "Enter the number you want to factor:"
number= gets.chomp.to_i
number_org= number
factors = []


  Prime.take_while{ |p| p<Math.sqrt(number_org)}.each do |x|
    if number % x == 0
      factors.push(x)
      until number % x == 0
        number=number/x
      end
    end
  end


puts "The prime factors of #{number_org} are #{factors.sort}. The highest prime
factor is #{factors[-1]}."
