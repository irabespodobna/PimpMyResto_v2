class CreateTableMealCategory < ActiveRecord::Migration[5.2]
  def change
    create_table :table_meal_categories do |t|
      t.timestamps
      t.string :name
    end
  end
end
