# paiza スキルチェックD071：洗濯物と砂ぼこり

# あなたは洗濯物を干すかどうか、その日の気温と湿度で決めることにしました。
# 暖かくて乾燥してる日を選んで干したいところですが、家の向には公園があり、そういった日は砂ぼこりが舞ってしまいます。
# そこであなたは干すためのルールを決めました。
# 気温が 25 ℃以上の日、もしくは湿度が 40 % 以下の日は干します。それ以外の日は干しません。
# ただし、上記の干す条件を満たす日のうち、気温が 25 ℃以上かつ、湿度 40 % 以下の日は砂ぼこりが舞うので干しません。
# 例えば、気温が 30 ℃で湿度が 60 % の日は温かいので干しますが、同じ気温で湿度が 20 % の日は砂ぼこりが舞うので干しません。
# その日の気温と湿度が与えられるので、干すかどうか判断してください。

input_line = gets
a = input_line.chomp
b = a.split(" ").map(&:to_i)
if b[0] >= 25 or b[1] <= 40
    if b[0] >= 25 and b[1] <= 40
        c = "No"
    else
        c = "Yes"
    end
else
    c = "No"
end
puts c

----------------------------------------------------------------------
# paiza スキルチェックC020：残り物の量

# あなたはスーパーマーケットを経営しています。

# 今、ある生鮮食品を m[kg] 仕入れました。とても新鮮だったため、生のまま販売したところ、 m[kg] のうち p[%] を売ることができました。
# 次にその売れ残りをすべてお惣菜にして販売したところ、売れ残った量のうち q[%] が売れました
# さて、m[kg] 仕入れたこの食品は最終的に何kg 売れ残ったでしょうか。
# ただし、生鮮食品をお総菜にする際は、量を変えることなく調理できるものとします。

x = gets.chomp
y = x.split(" ").map(&:to_i)
z = y[0] * (1 - y[1] / 100.to_f) * (1 - y[2] / 100.to_f)
p z

----------------------------------------------------------------------
# paiza スキルチェックC049：【ぱいじょ！コラボ問題】エレベーター

# あなたは霧島京子たちが通うパイザ女学院の用務員として、校舎に備え付けのエレベーターを管理しています。
# エレベーターが一定の距離を動くと、定期点検をしなければなりません。
# エレベーターの動きのログをもとに、エレベーターが何階分の距離を動いたか計算するプログラムを完成させてください。
# ただし、エレベーターは最初は必ず 1 階にいるものとします。

a = readlines.map(&:to_i)
for b in 1..a[0] do
    if b == 1
        c = (1 - a[b]).abs
    else
        c = c + (a[b-1] - a[b]).abs
    end
end
puts c