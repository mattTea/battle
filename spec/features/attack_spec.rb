# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

describe "Attack" do
  it "shows player 2 has been attacked" do
    sign_in_and_play
    click_link "attack"
    expect(page).to have_content "Matt attacked Andy"
  end

  it "shows player 1 has been attacked" do
    sign_in_and_play
    click_link "attack"
    click_button "OK"
    click_link "attack"
   
    expect(page).to have_content "Andy attacked Matt"
  end
end