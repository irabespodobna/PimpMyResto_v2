class AddMeallToSurveymeal < ActiveRecord::Migration[5.2]
  def change
    add_reference :surveymeals, :meal, foreign_key: true
  end
end
