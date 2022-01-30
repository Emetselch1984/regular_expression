pattern = /.../
pattern2 = /(.).(.)/
text = "foobar"
pattern.match(text)
pattern.match(text).captures
pattern2.match(text).captures
pattern.match(text,3)
pattern3 = /((.)\2)/
results = []
pattern3.match(text) {|m| results << m[0]}
results
contents = <<TEXT
正規表現とマッチすれば、
このコンテンツが表示される。
TEXT
pattern4 = "foo"
reg = Regexp.new(pattern4)
if reg.match(text)
  puts contents
end
pattern5 = /.../
reg = Regexp.new(pattern5)
if reg.match(text)
  puts contents
end
pattern6 = /(foo)(bar)(baz)/
text2 = "foobarbaz"
p pattern6.match(text2)
p pattern6.match(text2).to_a
p pattern6.match(text2).to_a.values_at(1,2,3)
pattern7 = /foo(.*)baz/
pattern7.match(text2).to_a
bar = pattern7.match(text2).to_a[1]
foo,bar,baz = pattern6.match(text2).to_a.values_at(1,2,3)

