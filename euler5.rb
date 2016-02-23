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



class Array
  def real_intersection(arr2)
    self_sorted = self.sort
    target_sorted = arr2.sort
    intersection= []
    jstart=0
    for i in (0..self_sorted.length-1)
      for j in (jstart..target_sorted.length-1)
        if self_sorted[i] == target_sorted[j]
          jstart = j+1
          intersection[intersection.length] = self_sorted[i]
          break
        end
      end
    end
    return intersection
  end
end
class Array
  # Subtract each passed value once:
  #   %w(1 2 3 1).subtract_once %w(1 1 2) # => ["2", "3"]
  # Time complexity of O(n + m)
  def subtract_once(values)
    counts = values.inject(Hash.new(0)) { |h, v| h[v] += 1; h }
    reject { |e| counts[e] -= 1 unless counts[e].zero? }
  end


ans_factor=[]
ans=1
(1..20).each do |x|
  prime_factorize(x).subtract_once((prime_factorize(x).real_intersection(ans_factor))).each do |y|
    ans_factor << y
  end
end

puts ans_factor
ans_factor.each do |x|
  ans*=x
end

puts ans
