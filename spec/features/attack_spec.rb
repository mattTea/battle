# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

describe "Attack player 2" do
  it "shows a confirmation when attacked" do
    sign_in_and_play
    click_link "attack"
    p $player1
    expect(page).to have_content "Matt attacked Andy"
  end

  it "shows player reduced 2 hit points" do
    # ...
  end
end