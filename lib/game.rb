class Game
  attr_reader :not_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn = player1
    @not_turn = player2
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def turn
    @turn
  end

  def switch_turns
    @turn = @turn == player1 ? player2 : player1
    @not_turn = @not_turn == player1 ? player2 : player1
  end

end