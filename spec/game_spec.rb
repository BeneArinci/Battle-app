require 'game'

describe Game do
  let(:player_1) {Player.new("Bene")}
  let(:player_2) {Player.new("Sopie")}
  subject(:game) {described_class.new(player_1, player_2)}

  context 'initialize' do
    it 'has instance variables equal to 2 objects of the player class' do
    expect(game.player_1).to eq(player_1)
    expect(game.player_2).to eq(player_2)
    end
  end
  context 'attack' do
    it 'player 1 attacks player and reduces HP by 10' do
      expect(player_2).to receive(:deduct_hp)
      game.attack(player_2)
    end
  end
  context 'current_turn' do
    it 'starts with player_1' do
    expect(game.current_turn).to eq(player_1)
    end
  end
  context 'switch_turns' do
  it 'switches the turn' do
    game.switch_turns
    expect(game.current_turn).to eq player_2
  end
  
  context 'opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(player_1)).to eq player_2
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end
end
end
