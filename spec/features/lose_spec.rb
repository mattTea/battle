# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first

describe "Lose Message" do
  it "shows a message when a player's hit points reach 0" do
    sign_in_and_play
    attack_to_zero_points
    expect(page).to have_content "Andy loses!"
  end
end
