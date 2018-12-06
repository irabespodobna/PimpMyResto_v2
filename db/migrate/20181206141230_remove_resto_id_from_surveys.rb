class RemoveRestoIdFromSurveys < ActiveRecord::Migration[5.2]
  def change
    remove_column :surveys, :resto_id, :biginit
  end
end
