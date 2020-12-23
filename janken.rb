#あっち向いてホイ(メソッド)
def look_this_away
puts "あっち向いて〜〜"
puts "0(上)1(下)2(左)3(右)"
direction = ["上","下","左","右"]
my_direction = gets.to_i
your_direction = rand(0..3)
puts "ホイ！"
puts "---------------------------------------------"
puts "あなた：#{direction[my_direction]}"
puts "相手：#{direction[your_direction]}"
puts "---------------------------------------------"
end

#じゃんけん(メソッド)
def janken
puts "じゃ〜んけーん"
puts "0(グー)1(チョキ)2(パー)"
choices = ["グー","チョキ","パー"]
my_choice = gets.to_i
your_choice = rand(0..2)
puts "ホイ！！"
puts "---------------------------------------------"
puts "あなた：#{choices[my_choice]}を出しました。"
puts "相手：#{choices[your_choice]}を出しました。"
puts "---------------------------------------------"
  if (my_choice == 2 && your_choice == 0) || (my_choice == 0 && your_choice == 1) || (my_choice == 1 && your_choice == 2)
#あっち向いてホイ(メソッド)  
    puts "あなたが指を指す番です。"
    puts "あっち向いて〜〜"
    puts "0(上)1(下)2(左)3(右)"
    direction = ["上","下","左","右"]
    my_direction = gets.to_i
    your_direction = rand(0..3)
    puts "ホイ！"
    puts "---------------------------------------------"
    puts "あなた：#{direction[my_direction]}"
    puts "相手：#{direction[your_direction]}"
    puts "---------------------------------------------"
    if my_direction == your_direction
      puts "あなたの勝ちです！！"
      return false
    else
      puts "セーフ！！"
      return true
    end
  elsif my_choice == your_choice
    puts "あいこになりました。"
    return true
  elsif (my_choice == 0 && your_choice == 2) || (my_choice == 1 && your_choice == 0) || (my_choice == 2 && your_choice == 1)
  #あっち向いてホイ(メソッド) 
    puts "相手が指を指す番です。。"
    puts "あっち向いて〜〜"
    puts "0(上)1(下)2(左)3(右)"
    direction = ["上","下","左","右"]
    my_direction = gets.to_i
    your_direction = rand(0..3)
    puts "ホイ！"
    puts "---------------------------------------------"
    puts "あなた：#{direction[my_direction]}"
    puts "相手：#{direction[your_direction]}"
    puts "---------------------------------------------"
    if my_direction == your_direction
      puts "相手の勝ちです！！"
      return false
    else 
      puts "セーフ！！"
    return true
    end
  end
end

retry_game = true

while retry_game
  retry_game = janken
end