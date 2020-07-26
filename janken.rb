
class Player
  def hand
    puts "0:グー, 1:チョキ, 2:パー"
    player_hand = gets.chomp
    while true
      if player_hand == "0" || player_hand == "1" || player_hand == "2"
        return player_hand.to_i
      else
        puts "0~2の数字を入力してください"
        puts "0:グー, 1:チョキ, 2:パー"
        player_hand = gets.chomp
      end
    end
  end
end

class Enemy
  def hand
    enemy_hand = rand(0..2)
    return enemy_hand
  end
end

class Janken
  def pon(player_hand,enemy_hand)
    janken = ["グー", "チョキ", "パー"]
    while true
      if(player_hand - enemy_hand + 3) % 3 == 0
        puts "相手のハンドは#{janken[enemy_hand]}です。あいこです。"
        return true
      elsif (player_hand - enemy_hand + 3) % 3 == 1
        puts "相手のハンドは#{janken[enemy_hand]}です。あなたの負けです。"
        return false
      elsif (player_hand - enemy_hand + 3) % 3 == 2
        puts "相手のハンドは#{janken[enemy_hand]}です。あなたの勝ちです。"
        return false
      else
        puts "無効な値です。0,1,2の中から数値を入力してください。"
        return true
      end 
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

janken.pon(player.hand, enemy.hand)