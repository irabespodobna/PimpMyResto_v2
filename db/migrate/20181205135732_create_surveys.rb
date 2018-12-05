class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :budget
      t.string :distance

      t.timestamps
    end
  end
end
