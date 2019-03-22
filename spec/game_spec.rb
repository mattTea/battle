require "game"

describe Game do

  subject(:game) { described_class.new }
  let(:player) {double :player}

  it { is_expected.to respond_to(:attack) }

  it 'inflicts damage to player' do
    expect(player).to receive(:receive_damage)
    subject.attack(player)
  end


end