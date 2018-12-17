class AddNametoDistanceCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :distance_categories, :name, :string
      end
    end
