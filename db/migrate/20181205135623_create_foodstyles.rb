class CreateFoodstyles < ActiveRecord::Migration[5.2]
  def change
    create_table :foodstyles do |t|
      t.string :type

      t.timestamps
    end
  end
end
