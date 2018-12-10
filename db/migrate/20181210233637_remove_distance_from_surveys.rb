class RemoveDistanceFromSurveys < ActiveRecord::Migration[5.2]
  def change
    remove_column :surveys, :distance, :string
  end
end
