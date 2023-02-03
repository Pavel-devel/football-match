class Match < ApplicationRecord
  has_many :teams

  validates :place, presence: true
end