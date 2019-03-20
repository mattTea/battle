# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

describe "Hitpoints" do
  context "when player names entered" do
    before do
      visit("/")
      fill_in "player_1_name", with: "Matt"
      fill_in "player_2_name", with: "Andy"
      click_button "Submit"
    end
    
    it "displays player 1 hit points on the page" do
      expect(page).to have_content "Matt HP: 100"
    end

    it "displays player 2 hit points" do
      expect(page).to have_content "Andy HP: 100"
    end
  end
end