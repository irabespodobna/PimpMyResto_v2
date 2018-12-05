class AddRestoToSurvey < ActiveRecord::Migration[5.2]
  def change
    add_reference :surveys, :resto, foreign_key: true
  end
end
