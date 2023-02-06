require 'rails_helper'

RSpec.describe Player, type: :model do
  let(:pele) { Player.new(name: 'Pele', number: 1, run: 10) }

  describe "associations" do
    it { should belong_to(:team) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:number) }
  end

  it 'returns name' do
    expect(pele.name).to eq('Pele')
  end

  it 'returns number' do
    expect(pele.number).to eq(1)
  end

  it 'returns run' do
    expect(pele.run).to eq(10)
  end

  it "returns true if player has the achievement running" do
    expect(pele.has_achievement_running(10)).to be_truthy
  end

  it "returns false if player doesn't have the achievement running" do
    expect(pele.has_achievement_running(5)).to eq(5)
  end
end
