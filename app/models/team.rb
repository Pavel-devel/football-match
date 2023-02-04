class Team < ApplicationRecord
  has_many :matches
  has_many :players

  def goals
    players.sum(&:goals)
  end
end
