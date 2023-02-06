class Team < ApplicationRecord
  has_many :matches
  has_many :players

  validates :name, presence: true
end
