class TableFoodstyleCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :foodstyle_categories
    add_column :foodstyle_categories, :name, :string
  end
end
