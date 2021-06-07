class AddCategoryToCar < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :category, :string
  end
end
