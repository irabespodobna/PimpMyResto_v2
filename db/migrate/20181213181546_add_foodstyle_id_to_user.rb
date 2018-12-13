class AddFoodstyleIdToUser < ActiveRecord::Migration[5.2]
  def change
        add_column :users, :foodstyle_category_id, :integer
        add_index :users, :foodstyle_category_id
  end
end
