class RemoveUserIdFromSurveys < ActiveRecord::Migration[5.2]
  def change
    remove_column :surveys, :user_id, :biginit
  end
end
