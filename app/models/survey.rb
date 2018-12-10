class Survey < ApplicationRecord
  belongs_to :foodstyle_category
  belongs_to :resto
  belongs_to :budget_category
  belongs_to :distance_category
  belongs_to :frequency_category
  belongs_to :meal_category
  validates :foodstyle_category_id, presence: { message: "You should choose a foodstyle." }
end
