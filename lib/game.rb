class Game

  def initialize(player1, player2)
    @players = [player1, player2]
    @player1 = player1
    @player2 = player2
  end

  def player1
    @player1
  end

  def player2
    @player2
  end

  def turn
    @players.first
  end

  def not_turn
    @players.last
  end

  def switch_turns
    @players.reverse!
  end

end