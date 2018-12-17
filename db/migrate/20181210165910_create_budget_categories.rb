class CreateBudgetCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :budget_categories, &:timestamps
  end
end
