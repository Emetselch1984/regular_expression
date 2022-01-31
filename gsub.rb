p 'abcdefg'.gsub(/def/, '!!')
p 'abcabc'.gsub(/b/, '<<\&>>')
p 'xxbbxbb'.gsub(/x+(b+)/, 'X<<\1>>')
p '2.5'.gsub('.', ',') # => "2,5"
hash = {'b'=>'B', 'c'=>'C'}

p "abcabc".gsub(/[bc]/){hash[$&]} #=> "aBCaBC"
p "abcabc".gsub(/[bc]/, hash)     #=> "aBCaBC"