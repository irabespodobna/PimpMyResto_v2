class AddRestoIdToSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :resto_id, :integer
    add_index :surveys, :resto_id
  end
end
