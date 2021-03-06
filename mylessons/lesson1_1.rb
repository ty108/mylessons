require 'sinatra'

mankind =["河上","江口","野呂","三浦","堀松","立原","高塚","坂上","田中","矢崎","阿部","米満","鈴木","佐藤","小野塚","安倍","人間","人","ヒト"]
mammal =["犬","いぬ","イヌ","猫","ねこ","ネコ","鼠","ねずみ","ネズミ","牛","うし","ウシ","虎","とら","トラ","兎","うさぎ","ウサギ","猿","さる","サル","チンパンジー","ゴリラ","オランウータン","ライオン","キリン","カバ","猪","いのしし","イノシシ","チーター","ハイエナ","インパラ","マントヒヒ","なまけもの","ナマケモノ","山羊","やぎ","ヤギ","熊","くま","クマ","馬","うま","ウマ","カンガルー","ウォンバット","オオアリクイ","アリクイ","ワラビー","バッファロー","プレイリードッグ","プレーリードッグ","鹿","しか","シカ","クジラ","鯨","マッコウクジラ","ナガスクジラ","シロナガスクジラ","ミンククジラ","ザトウクジラ","いるか","イルカ","バンドウイルカ","ベルーガ","スナメリ","アザラシ","ゾウアザラシ","トド","セイウチ","オットセイ"]
reptile =["蛇","ヘビ","へび","とかげ","トカゲ","イグアナ","カメレオン","コブラ","蝮","マムシ","まむし","アオダイショウ","やまかがし","ヤマカガシ","わに","ワニ","ヤモリ","亀","カメ","かめ","ムカシトカゲ","ニシキヘビ","アナコンダ","ガラガラヘビ","スッポン","海亀","アオウミガメ","ウミガメ","ゾウガメ","ガラパゴスゾウガメ","海蛇","ウミヘビ"]
amphibia =["蛙","かえる","カエル","ヒキガエル","トノサマガエル","アオガエル","サンショウウオ","オオサンショウウオ","イモリ"]
bird =["ペンギン","皇帝ペンギン","アデリーペンギン","アホウドリ","あほうどり","信天翁","たか","鷹","タカ","鷲","ワシ","わし","鳩","ハト","はと","雀","すずめ","スズメ","燕",",つばめ","ツバメ","カラス","烏","からす","セキレイ","鵜","う","ゥ","かも","カモ","鴨","カルガモ","カモメ","ユリカモメ","オウム","フクロウ","ふくろう","みみずく","ミミズク","フクロウ","コンドル","ハゲタカ","ミサゴ","ペリカン","フラミンゴ","さぎ","サギ","鷺","白サギ","シロサギ","青サギ","アオサギ","鴇","トキ","インコ","セキセイインコ","文鳥","オカメインコ","オオハシ","鳶","トビ","トンビ","とんび","雲雀","ひばり","ヒバリ"]
fish =["サメ","鮫","ホオジロザメ","ジンベイザメ","ネコザメ","ドチザメ","コバンザメ","鯖","サバ","鰤","ブリ","ぶり","ハマチ","はまち","いなだ","イナダ","鯵","あじ","アジ","鰯","いわし","イワシ","秋刀魚","さんま","サンマ","カマス","かます","オニカマス","鰊","ニシン","にしん","鯉","コイ","こい","鮒","ふな","フナ","カワハギ","かわはぎ","コハダ","小鰭","マグロ","鮪","まぐろ","クロマグロ","鰹","かつお","カツオ","たら","タラ","鱈","スズキ","鮎","アユ","鯔","ボラ","ぼら","くまのみ","クマノミ"]
insect =["蚊","カ","か","蝿","ハエ","はえ","クワガタ","クワガタムシ","カブトムシ","蝶","蝶々","チョウ","チョウチョ","蛾","ガ","トンボ","オニヤンマ","赤とんぼ","アキアカネ","シオカラトンボ","ムギワラトンボ","イナゴ","カマキリ"]
plant =["松","まつ","マツ","竹","たけ","タケ","梅","うめ","ウメ","桜","サクラ","さくら","桃","もも","モモ","チューリップ","コスモス","ヒマワリ","ひまわり","アサガオ","あさがお","杉","スギ","すぎ","ヒマラヤスギ","屋久杉","ヤクスギ","サルスベリ","ブナ","銀杏","柳","やなぎ","ヤナギ","パンジー","三色すみれ","ラベンダー","ツツジ","つつじ","蓮","ハス","楓","カエデ","芝桜","シバザクラ","金魚草","サルビア","きゅうり","キュウリ","玉ねぎ","たまねぎ","タマネギ","玉葱","さつまいも","サツマイモ"]
others =[]
#name = gets.chomp

get '/' do
    erb :postname
end

post '/' do
    
    $category = "わかりません"
    $name = params[:newname]
    while $category == "わかりません" do
        mankind.size.times do |i|
          if mankind[i]== $name
          $category = "人"
          end
        end
        
        mammal.size.times do |i|
            if mammal[i]== $name
                $category = "哺乳類"
            end
        end
        
        reptile.size.times do |i|
            if reptile[i]== $name
                $category = "爬虫類"
            end
        end
            
    
        amphibia.size.times do |i|
            if amphibia[i]== $name
               $category = "両生類"
            end
        end
    
        bird.size.times do |i|
            if bird[i]== $name
                $category = "鳥"
            end
        end
        
        fish.size.times do |i|
            if fish[i]== $name
               $category = "魚"
            end
        end
        
        insect.size.times do |i|
            if insect[i]== $name
                $category = "虫"
            end
        end
        
        plant.size.times do |i|
            if plant[i]== $name
               $category = "植物"
            end
        end
        others.size.times do |i|
            if others[i]== $name
                $category = "その他"
            end
        end
       break     
    end


    if $category == "わかりません"
        erb :ask

    else
        erb :show

    end
end
    
post '/register' do
   case params[:newcategory]
    when "人"
        mankind << $name
    when "哺乳類"
        mammal << $name
    when "爬虫類"
        reptile << $name
    when "両生類"
        amphabia << $name
    when "鳥"
        bird << $name
    when "魚"
        fish << $name
    when "虫"
        insect << $name
    when "その他"
        others << $name
   end
   $category = params[:newcategory]
   erb :show2
end



    

