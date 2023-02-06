class Player < ApplicationRecord
  belongs_to :team
  has_many :achievements

  validates :name, :number, presence: true

  def assinged_conditions?(achievent)
  end
  def to_s
    "#{name}: #{team.name}"
  end
end
