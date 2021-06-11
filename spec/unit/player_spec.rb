require 'player'

describe Player do
  subject(:ash) { Player.new('Ash') }
  subject(:frank) { Player.new('Frank') }

  context '#name' do
    it 'returns the name' do
      expect(ash.name).to eq('Ash')
    end
  end

  context '#hit_points' do
    it { is_expected.to respond_to(:hit_points) }

    it 'has a default value' do
      expect(subject.hit_points).to eq(Player::DEFAULT_HP)
    end
  end

  context '#attack' do
    it 'can attack another player' do
      expect(frank).to receive(:receive_damage)
      ash.attack(frank)
    end
  end

  context '#receive_damage' do
    it 'can reduce hit_points' do
      expect { subject.receive_damage }.to change{ subject.hit_points }.by(-10)
    end
  end
end