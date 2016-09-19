#　素数をmax個カウントするプログラム

print "素数をいくつ表示しますか？"
max = gets.chomp.to_i           #ストリングで数値の入力を受けて、整数に変換
t = 3                           # 検査対象の数値。3から始めないとちょっとした不都合がある。
sosu = [2,3]
c = 2                           # 素数の配列の中の要素の数
while c < max do
    t += 1
    i = 0                       # iは配列の中の要素番号
        while i < c do
        judge = t % sosu[i]
            if judge != 0
                i += 1
            else
                break
            end
        end
            
            if judge != 0
                sosu << t
                c += 1
            end
end

(0..max-1).each do |s|          #配列sosuの要素番号を0からmax-1まで順番に繰り上げ
    print "#{sosu[s]} \t"       #配列の要素を取り出して数字として表示。
    if (s+1) % 10 == 0          #いくつか表示したら改行して見やすくする。
        print "\n"
    end
end

# rのレンジに何個の素数があるかを表示する

r = 500
p = 0
n = 0
m = 0
while p*r <= t-r do
    while sosu[n] <= p*r + r do
    n += 1
    m += 1
    end
    
    printf "%6d", p*r
    print "～"
    printf "%6d", p*r + r
    print "\t"
    m.times do print "○" 

    
end
    print "\n"
    p += 1
    m = 0
end
    




