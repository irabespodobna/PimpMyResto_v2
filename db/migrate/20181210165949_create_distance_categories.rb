class CreateDistanceCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :distance_categories do |t|

      t.timestamps
    end
  end
end
