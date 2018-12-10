class AddNametoBudgetCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :budget_categories, :name, :string
  end
end
