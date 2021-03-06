require 'game'

describe Game do
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }
  subject(:game) { described_class.new(player_1, player_2) }

  context '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq(player_1)
    end
  end

  context '#player_2' do
    it 'retrieves the first player' do
      expect(game.player_2).to eq(player_2)
    end
  end

  context '#attack' do
    it 'can attack another player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  context '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq(player_1)
    end

    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq(player_2)
    end
  end
end