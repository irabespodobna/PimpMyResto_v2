class AddBudgetCategoryIdToSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :budget_category_id, :integer
    add_index :surveys, :budget_category_id
  end
end
