class AddPassPercentageToPlayer < ActiveRecord::Migration[7.0]
  change_table :players do |t|
    t.integer :pass_percentage, default: 0

  end
end
