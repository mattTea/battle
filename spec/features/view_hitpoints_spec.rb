# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

describe "Hitpoints" do
  it "displays player 1 hit points" do
    sign_in_and_play
    expect(page).to have_content "Matt HP: 100"
  end

  it "displays player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content "Andy HP: 100"
  end
end