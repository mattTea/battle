# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

describe "Homepage" do
  it "displays a form to enter player names" do
    visit("/")
    expect(page).to have_selector("form")
  end

  it "displays player name" do
    visit("/")
    fill_in "player_1_name", with: "Matt"
    fill_in "player_2_name", with: "Andy"
    click_button "Submit"
    expect(page).to have_content "Matt vs Andy!"
  end
end