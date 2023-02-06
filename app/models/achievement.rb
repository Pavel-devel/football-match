class Achievement < ApplicationRecord
  has_many :players
  has_many :matches

  def assigned_players
    players.map(&:to_s)
  end
end
