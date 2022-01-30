text1 = <<TEXT
名前：foobar
電話：03-1234-5678
住所：愛媛西脇市拷問町1-2-3
TEXT

pattern1 = /(\d{2}-\d{4}-\d{4})/
reg =  Regexp.new(pattern1)
match_data = reg.match(text1).to_a[1]

text2 = <<TEXT
名前：foobar
電話：03-1234-5678
電話：090-1234-5678
電話：0795-12-3456
電話：04992-1-2345
住所：愛媛西脇市拷問町1-2-3
TEXT

pattern2 = /(\d{2,5}-\d{1,4}-\d{4})/
reg2 = Regexp.new(pattern2)
results = []
text2.split.each do |elm|
  result = reg2.match(elm).to_a[1]
  results << result unless result.nil?
end
results
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