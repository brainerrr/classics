class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.string :year
      t.float :price_day
      t.text :description
      t.boolean :availability
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
