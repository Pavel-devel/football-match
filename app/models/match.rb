class Match < ApplicationRecord
  has_many :teams

  def players_with_achievement(achievement)
    run.select { |a| a[:achievement] == achievement }.map { |a| a[:player] }
  end
end