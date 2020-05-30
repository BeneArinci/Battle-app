feature 'Testing infrastructure working!' do

  scenario "should print 'Hello Battle!'" do
    visit("/")
    expect(page).to have_content('Hello are you Ready to Battle!?')
  end
end

feature 'Enter Players' do

  scenario "should have form to enter two players" do
    visit("/")
    expect(page).to have_content('Enter Name of Player 1:')
    expect(page).to have_content('Enter Name of Player 2:')
  end

  scenario "/names shows player names" do
    visit("/")
    fill_in 'player_1', with: "Bene"
    fill_in 'player_2', with: "Sophie"
    click_button("Submit")
    expect(page).to have_content("Bene vs. Sophie")
  end
end
