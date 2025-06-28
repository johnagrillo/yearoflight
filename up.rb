day = 26

%W(
250619-p9p-pics-142337853
250624-p9p-pics-214209694-3
250624-p9p-pics-214334056
250624-p9p-pics-214356729
250624-p9p-pics-214434457-2
250624-p9p-pics-214537863
250624-p9p-pics-214623250
250625-p9p-pics-205323141-3
250625-p9p-pics-205440275-3
250625-p9p-pics-205558665-3
).reverse.each do |p|
day = day-1
puts "
- date: 2025-06-#{day}
  description:
   - pic
  image:
    - #{p}
"

end

           


           
  
