require 'player'
require 'game'
describe Player do
  let(:player_1) { Player.new("Bene") }
  let(:player_2) { Player.new("Sophie") }
  let(:game) {Game.new}

  it 'players have names' do
    expect(player_1.name).to eq("Bene")
    expect(player_2.name).to eq("Sophie")
  end

  it 'creates an new instance of player with default HP of 100' do
    expect(player_1.hp).to eq(100)
  end

  describe "#deduct_hp" do
    it 'reduces the players HP by 10' do
      expect{ player_1.deduct_hp }.to change { player_1.hp }.by -10
    end
  end

  # describe '#attack' do
  #   it 'player 1 attacks player and reduces HP by 10' do
  #     expect(player_2).to receive(:deduct_hp)
  #     player_1.attack(player_2)
  #   end
  # end
end
