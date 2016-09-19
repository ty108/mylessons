#　素数をmax個カウントするプログラム
#　maxの数字をWebから入力

require 'sinatra'
get '/' do
    erb :sosu2i
end

post '/' do
    @max = params[:scount].to_i
    t = 3                           # 検査対象の数値。3から始めないとちょっとした不都合がある。
    sosu = [2,3]
    c = 2                           # 素数の配列の中の要素の数
    while c < @max do
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
    @sosu = sosu
    erb :sosulist
end

