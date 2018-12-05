class AddFoodstyleToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :foodstyle, foreign_key: true
  end
end
