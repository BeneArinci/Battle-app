require_relative 'sign_in_process'
require './spec/spec_helper.rb'

feature 'Switch turns' do
  context 'seeing the current turn' do
    it 'at the start of the game' do
      sign_in_process
      expect(page).to have_content "Bene's turn"
    end

    it 'after player1 attacks' do
      sign_in_process
      click_button 'Attack'
      click_button 'OK'
      expect(page).to_not have_content "Bene's turn"
      expect(page).to have_content "Sophie's turn"
    end
  end
end
