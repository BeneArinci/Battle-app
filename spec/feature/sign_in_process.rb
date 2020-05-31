
def sign_in_process
  visit("/")
    fill_in 'player_1', with: "Bene"
    fill_in 'player_2', with: "Sophie"
    click_button("Submit")
end
