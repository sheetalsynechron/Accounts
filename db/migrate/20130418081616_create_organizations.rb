class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.integer :user_id
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
