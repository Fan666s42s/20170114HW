class RPS
  attr_accessor :com_choose, :player_choose
  def initialize
    @com_choose = ["R","P","S"].sample
    puts "=============================================="
    puts "=     welcome to play Rock Paper Sicssor     ="
    puts "=============================================="
    puts "=please choose Rock(R) Paper(P) or Sicssor(S)="
    @player_choose =  gets.chomp.upcase
  end

  def decide(a, b)
    player_choose = a
    com_choose = b
    if player_choose != com_choose
      case player_choose
      when "R"
        puts com_choose == "P" ? "You choose Rock, Computer Choose Paper. You lose!" : "You choose Rock, Computer Choose Sicssor. You WIN!"
      when "P"
        puts com_choose == "S" ? "You choose Paper, Computer Choose Sicssor. You lose!" : "You choose Paper, Computer Choose Rock. You WIN!"
      when "S"
        puts com_choose == "R" ? "You choose Sicssor, Computer Choose Rock. You lose!" : "You choose Sicssor, Computer Choose Paper. You WIN!"
      else
        puts "invalid  input, you lose!"
      end
    else
      case player_choose
      when "R"
        puts "You choose Rock, Computer choose Rock. It's draw!"
      when "P"
        puts "You choose Paper,  Computer choose Paper.It's draw!"
      when "S"
        puts "You choose Sicssor,  Computer choose Sicssor.It's draw!"
      else
        puts "invalid  input, you lose!"
      end
    end

  end

end