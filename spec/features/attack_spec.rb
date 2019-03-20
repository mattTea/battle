# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

describe "Attack player 2" do
  it "shows a confirmation when attacked" do
    sign_in_and_play
    click_link "attack"
    expect(page).to have_content "Player 2 hit!"
  end
end