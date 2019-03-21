require "player"

describe Player do
  subject(:matt) {  Player.new("Matt") }
  subject(:andy) { Player.new("Andy") }

  it "returns player name" do
    expect(matt.name).to eq "Matt"
  end

  it "returns player hit points" do
    expect(matt.hit_points).to eq 100
  end

  it "damages the player" do
    expect(andy).to receive(:receive_damage)
    matt.attack(andy)
  end
end