class RenameTableMealCategoryToMealCategory < ActiveRecord::Migration[5.2]
  def change
  	rename_table :table_meal_categories, :meal_categories
  end
end
