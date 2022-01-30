p /.../.match("foobar")
p /(.).(.)/.match("foobar",3)
p /.../.match("foobar").captures
p /(.).(.)/.match("foobar").captures
p /(.).(.)/.match("foobar",3).captures

results = []
pattern = /((.)\2)/
pattern.match("foo") {|m| results << m[0]}
results

results = []
/((.)\2)/.match("foo") {|m| results << m[0] } # => ["oo"]
/((.)\2)/.match("bar") {|m| results << m[0] } # => nil
results # => ["oo"]

contents = <<TEXT
正規表現とマッチすれば、
このコンテンツが表示される。
TEXT
reg = Regexp.new("foo")
if reg.match("foobar")
  puts contents
end
p /(foo)(bar)(baz)/.match("foobarbaz")
p /(foo)(bar)(baz)/.match("foobarbaz").to_a
p /(foo)(bar)(baz)/.match("foobarbaz").to_a.values_at(1,2,3)

bar = /foo(.*)baz/.match("foobarbaz").to_a[1]
bar = /foo(.*)baz/.match("foobarbaz").to_a