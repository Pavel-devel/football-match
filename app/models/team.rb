class Team < ApplicationRecord
  belongs_to :match
  has_many :players

  validates :name, presence: true

  def goals
    players.sum(&:goals)
  end
end
