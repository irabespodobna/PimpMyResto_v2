class AddDistanceCategoryIdToSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :distance_category_id, :integer
    add_index :surveys, :distance_category_id
  end
end
