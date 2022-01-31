# https://qiita.com/jnchito/items/64c3fdc53766ac6f2008
# より引用
text = <<TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT
pattern1 = /クープバゲット/
reg = Regexp.new(pattern1)
text.scan(reg)
pattern2 = /クープバゲット|クープ バゲット/
reg2 = Regexp.new(pattern2)
text.scan(reg2)
pattern2 = /クープ\s?バゲット/
reg2 = Regexp.new(pattern2)
text.scan(reg2)
pattern3 = /クープ\s?バゲット|クープ　バゲット/
reg3 = Regexp.new(pattern3)
text.scan(reg3)
pattern4 = /クープ.?バゲット/
reg4 = Regexp.new(pattern4)
text.scan(reg4)
pattern5 = /(クープ.?バ[ゲケ]ット)/
reg5 = Regexp.new(pattern5)
text.scan(reg5)
pattern6 = /クープ.?バ[ゲケ]ット/
reg6 = Regexp.new(pattern6)
text.scan(reg6)

