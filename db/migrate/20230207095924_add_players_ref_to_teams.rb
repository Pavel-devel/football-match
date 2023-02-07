class AddPlayersRefToTeams < ActiveRecord::Migration[7.0]
  def change
    add_reference :teams, :players, null: true, foreign_key: true
  end
end
