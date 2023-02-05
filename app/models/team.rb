class Team < ApplicationRecord
  has_many :matches
  has_many :players

  validates :name, presence: true
  def goals
    players.sum(&:goals)
  end

  def top_5_players_by_achievement(achievement)
    players.sort_by { |player| player.run.count(achievement) }[0, 5]
  end
end
