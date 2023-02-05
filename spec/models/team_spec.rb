require 'rails_helper'

RSpec.describe Team, type: :model do
  let(:red_team) { Team.new(name: 'RED') }

  it { should have_many(:players) }

  it 'returns name' do
    expect(red_team.name).to eq('RED')
  end

  describe '#player_completed' do
    let(:players) do
      {
        player1: 10,
        player2: 60,
        player3: 20,
        player4: 70
      }
    end

    it 'returns the player with 10 or more runs or 70% or higher pass completion' do
      expect(red_team.player_completed(run, pass_percentage)).to eq(10 || 70)
    end
  end

end
