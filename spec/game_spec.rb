require "game"

describe Game do

  subject(:game) { described_class.new(player1,player2) }
  let(:player1) {double :player1}
  let(:player2) {double :player2}

  it { is_expected.to respond_to(:attack) }

  it 'returns player1' do
    expect(game.player1).to eq player1
  end

  it 'returns player2' do
    expect(game.player2).to eq player2
  end

  it 'inflicts damage to player' do
    expect(player2).to receive(:receive_damage)
    subject.attack(player2)
  end
end