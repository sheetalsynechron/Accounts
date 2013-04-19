class CreateMoneyCalculations < ActiveRecord::Migration
  def change
    create_table :money_calculations do |t|
      t.integer :calculation_amount
      t.integer :organization_id
      t.integer :user_id
      t.string :user_name
      t.string :organization_name

      t.timestamps
    end
  end
end
