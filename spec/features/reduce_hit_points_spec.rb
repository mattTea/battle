# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

describe "Reduce hit points" do
  it "reduces hit points by 10" do
    sign_in_and_play
    click_link "attack"
    expect(page).to have_content("90")
  end
end