require_relative "RPS"

begin 

  game = RPS.new

  game.decide(game.player_choose,game.com_choose)

  puts "do you want to play again(Y/N)"
  playAgain = gets.chomp.upcase
end while playAgain == "Y"
    
puts "=============================================="
puts "=            Thanks for playing              ="
puts "=               BY Fan666s42s                ="
puts "=============================================="