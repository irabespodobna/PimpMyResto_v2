class AddNametoFrequencyCategory < ActiveRecord::Migration[5.2]
  def change
  	 add_column :frequency_categories, :name, :string
  end
end
