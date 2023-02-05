class Player < ApplicationRecord
  belongs_to :team

  validates :name, :number, presence: true

  def has_achievement_running(achievements)
    players.include?(achievements)
  end
end
