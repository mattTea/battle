# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

describe "Homepage" do
  it "displays a form to enter player names" do
    visit("/")
    expect(page).to have_selector("form")
  end

  it "displays player name" do
    sign_in_and_play
    expect(page).to have_content "Matt vs Andy!"
  end
end