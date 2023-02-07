class Match < ApplicationRecord
  has_many :teams
  has_many :events
  def top_5_players(achievement)
    achievements.find_by(id: achievement.id).assigned_players
  end
end
