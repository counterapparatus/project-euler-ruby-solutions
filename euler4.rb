ans = [0,0,0](100..999).each do |x|  (100..999).each do |y|     if (x*y).to_s==(x*y).to_s.reverse && (x*y)>ans[2] then       ans =[x,y,x*y]     end  endendputs ans