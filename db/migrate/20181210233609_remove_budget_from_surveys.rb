class RemoveBudgetFromSurveys < ActiveRecord::Migration[5.2]
  def change
    remove_column :surveys, :budget, :string
  end
end
