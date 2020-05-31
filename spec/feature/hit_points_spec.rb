require_relative 'sign_in_process'

feature 'Checks to see other players hit points' do
  scenario 'Shows Player 2 Hit Points' do
    sign_in_process
    expect(page).to have_content( "Bene: 100 HP")
  end
  scenario 'see Player 1 hit points' do
    sign_in_process
    expect(page).to have_content ("Sophie: 100 HP")
  end
end

feature 'Checks that player 1 can attack player 2' do
  scenario 'shows button to allow attack' do
    sign_in_process
    click_button('Attack')
    expect(page).to have_content ("Bene attacked Sophie")
  end
end

feature 'be attacked by Player 2' do
  scenario 'allow player 2 to attack' do
    sign_in_process
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content ("Sophie attacked Bene")
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_process
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Bene: 100HP'
    expect(page).to have_content 'Bene: 90 HP'
  end
end
# feature 'Allow player1 to attack player 2 and reduce their hp' do
#   scenario 'reduces hit points' do
#     sign_in_process
#     click_button('Attack')
#     expect(page).to have_content("Bene HP = 90")
#   end
# end
