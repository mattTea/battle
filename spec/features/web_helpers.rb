def sign_in_and_play
  visit("/")
  fill_in "player_1_name", with: "Matt"
  fill_in "player_2_name", with: "Andy"
  click_button "Submit"
end

def attack_to_zero_points
  18.times do
    click_link "attack"
    click_button "OK"
  end
  
  click_link "attack"
end