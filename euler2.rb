n=1
n_minus =1
ans = 0
while n<4000000
  n=n+n_minus
  n_minus = n - n_minus
  if n%2===0
    ans += n
  end
end

puts ans
