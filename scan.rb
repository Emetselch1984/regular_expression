text3 = <<TEXT
名前：foobar
電話：03(1234)5678
電話：090-1234-5678
電話：0795(12)3456
電話：04992-1-2345
住所：兵庫県西脇市板波町1-2-3
TEXT
pattern3 = /(\d{2,5}[-(]\d{1,4}[-)]\d{4})/
reg3 = Regexp.new(pattern3)
results = []
text3.split.each do |elm|
  result = reg3.match(elm).to_a[1]
  results << result unless result.nil?
end
results

ary = text3.scan(reg3)
results = []
ary.map {|m| results << m[0]}
results
