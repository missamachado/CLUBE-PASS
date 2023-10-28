class CreateTableReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :order, null: false, foreign_key: true
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
