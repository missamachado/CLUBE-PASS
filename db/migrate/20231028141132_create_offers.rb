class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end