class CreateClubPasses < ActiveRecord::Migration[7.0]
  def change
    create_table :club_passes do |t|
      t.string :category
      t.text :description
      t.integer :price
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
