class Rps

def initialize(player1, player2)
  @player1 = player1
  @player2 = player2
end

def game
  if (@player1 == "rock" && @player2 == "scissors") || (@player1 == "scissors" && @player2 == "paper") || (@player1 == "paper" && @player2 == "rock")
    return "player1 wins!"
  elsif (@player2 == "rock" && @player1 == "scissors") || (@player2 == "scissors" && @player1 == "paper") || (@player2 == "paper" && @player1 == "rock")
    return "player2 wins!"
  else
    return "It's a draw!"
  end
end

end
