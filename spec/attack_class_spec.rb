require 'attack'

describe Attack do

  subject(:attack_class) { described_class }
  let(:player) { double }

  it 'inflicts damage to player' do
    expect(player).to receive(:receive_damage)
    attack_class.run(player)
  end

end