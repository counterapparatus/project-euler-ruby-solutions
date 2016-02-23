def prime_factorize(int)
require 'mathn'
factors =[]
factors << int if Prime.prime?(int)
Prime.take_while{|p| p<Math.sqrt(int)}.each do |x|
  if int % x== 0
    factors << x
    while int % x==0
      int=int/x
      factors << x
    end
  end
end
return factors
end

print prime_factorize(108)
