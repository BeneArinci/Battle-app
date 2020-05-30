require_relative 'sign_in_process'
require './spec/spec_helper.rb'

# scenario 'Switch turns' do
#   context 'seeing the current turn' do
#     scenario 'at the start of the game' do
#       sign_in_process
#       expect(page).to have_content "Bene's turn"
#     end
#
#     scenario 'after player1 attacks' do
#       sign_in_process
#       click_button 'Attack'
#       click_link 'OK'
#       expect(page).to_not have_content "Bene's turn"
#       expect(page).to have_content "Sophie's turn"
#     end
#   end
# end
