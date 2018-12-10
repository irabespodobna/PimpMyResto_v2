class CreateFrequencyCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :frequency_categories do |t|

      t.timestamps
    end
  end
end
