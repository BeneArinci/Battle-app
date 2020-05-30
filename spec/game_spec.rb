require 'game'

describe Game do
  let(:player_1) {double :player}
  let(:player_2) {double :player}
  subject(:game) {described_class.new}

  context 'attack' do
    it 'player 1 attacks player and reduces HP by 10' do
      expect(player_2).to receive(:deduct_hp)
      game.attack(player_2)
    end
  end
end
