class AddGoalsToPlayer < ActiveRecord::Migration[7.0]
  change_table :players do |t|
    t.integer :goals, default: 0

  end
end
