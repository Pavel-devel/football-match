class AddRefTeamsMatches < ActiveRecord::Migration[7.0]
  def change
    add_reference :teams, :matches, null: false, foreign_key: true
  end
end
