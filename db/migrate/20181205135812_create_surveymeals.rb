class CreateSurveymeals < ActiveRecord::Migration[5.2]
  def change
    create_table :surveymeals do |t|

      t.timestamps
    end
  end
end
