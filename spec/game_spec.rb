require "game"

describe Game do

  subject(:game) { described_class.new(player1,player2) }
  let(:player1) {double :player1}
  let(:player2) {double :player2}

  it 'returns player1' do
    expect(game.player1).to eq player1
  end

  it 'returns player2' do
    expect(game.player2).to eq player2
  end

  it '#turn' do
    expect(game.turn).to eq player1
  end

  it '#switch_turns' do
    expect(game.not_turn).to eq player2
  end
end