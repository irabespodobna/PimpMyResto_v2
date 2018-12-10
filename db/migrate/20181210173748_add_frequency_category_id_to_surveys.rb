class AddFrequencyCategoryIdToSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :frequency_category_id, :integer
    add_index :surveys, :frequency_category_id
  end
end
