# As two Players,
# So we can continue our game of Battle,
# We want to switch turns.

describe "Turn Switcher" do
  it 'shows player 1 turn' do
    sign_in_and_play
    expect(page).to have_content "Turn: Matt"
  end

  it 'shows player 1 turn' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    expect(page).to have_content "Turn: Andy"
  end


end
