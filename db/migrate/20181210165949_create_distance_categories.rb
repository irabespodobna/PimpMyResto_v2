class CreateDistanceCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :distance_categories, &:timestamps
  end
end
