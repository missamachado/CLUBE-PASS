class CreateTableOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :orders
      t.references :user, null: false, foreign_key: true
      t.references :club_pass, null: false, foreign_key: true

      t.timestamps
    end
  end
end
