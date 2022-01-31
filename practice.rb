p 'abcdefg'.gsub(/def/, '!!')
p 'abcabc'.gsub(/b/, '<<\&>>')
p 'xxbbxbb'.gsub(/x+(b+)/, 'X<<\1>>')
p '2.5'.gsub('.', ',') # => "2,5"
p 'xbbb-xbbb'.gsub(/x(b+)/, '\1')      # => "bbb-bbb"
p 'xbbb-xbbb'.gsub(/x(b+)/, "\1")

p 'abcdefg'.gsub(/def/) {'!!'}
p 'abcabc'.gsub(/b/) {'<<\&>>'}
p 'xxbbxbb'.gsub(/x+(b+)/) {'X<<\$>>'}
hash = {'b'=>'B', 'c'=>'C'}
p "abcabc".gsub(/[bc]/){hash[$&]} #=> "aBCaBC"
p "abcabc".gsub(/[bc]/, hash)     #=> "aBCaBC"

