class AddSurveymealToSurvey < ActiveRecord::Migration[5.2]
  def change
    add_reference :surveys, :surveymeal, foreign_key: true
  end
end
