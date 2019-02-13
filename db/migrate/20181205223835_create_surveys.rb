class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.integer :foodstyle_category_id

      t.timestamps
    end
  end
end
