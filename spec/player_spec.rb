require "player"

describe Player do
  it "returns player name" do
    expect(Player.new("Matt").return_name).to eq "Matt"
  end
end