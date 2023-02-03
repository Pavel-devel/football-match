class Player < ApplicationRecord
  belongs_to :team

  validates :name, :number, presence: true
end
