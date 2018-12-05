class AddFoodstyleIdtoSurvey < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :foodstyle_category_id, :integer
    add_index :surveys, :foodstyle_category_id
  end
end
