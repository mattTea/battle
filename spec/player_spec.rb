require "player"

describe Player do
  subject(:matt) { Player.new("Matt") }

  it "returns player name" do
    expect(matt.name).to eq "Matt"
  end

  it "returns player hit points" do
    expect(matt.hit_points).to eq 100
  end
end