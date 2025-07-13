
day = 2
%W(
250704-p9p-pics-012214956-2.jpg
250706-p9p-pics-231632864.jpg
250708-p9p-pics-192201482-2.jpg
250709-p9p-pics-211920362-2.jpg
250709-p9p-pics-213139587-2.jpg
250712-p9p-pics-112946162.jpg
250712-p9p-pics-112956311-2.jpg
250713-p9p-pics-224209151.jpg
).reverse.each do |p|


puts "
- date: 2025-07-03
  description:
   - pic
  image:
    - #{p}
"

end

           


