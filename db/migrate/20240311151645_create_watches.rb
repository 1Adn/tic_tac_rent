class CreateWatches < ActiveRecord::Migration[7.1]
  def change
    create_table :watches do |t|
      t.string :name
      t.decimal :price
      t.string :brand
      t.string :model
      t.text :description
      t.string :movement_type
      t.string :gender
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
