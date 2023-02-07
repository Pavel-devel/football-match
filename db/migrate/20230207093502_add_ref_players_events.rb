class AddRefPlayersEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :players, :events, null: true, foreign_key: true
  end
end
