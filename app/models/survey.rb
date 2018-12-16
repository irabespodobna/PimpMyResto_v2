class Survey < ApplicationRecord
  belongs_to :foodstyle_category
  belongs_to :resto
  belongs_to :user
  validates :foodstyle_category_id, presence: { message: "You should choose a foodstyle." }
end
