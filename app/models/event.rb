class Event < ApplicationRecord
  has_many :players
  belongs_to :match
end
