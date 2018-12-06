class Survey < ApplicationRecord
  belongs_to :foodstyle_category
  belongs_to :resto

  validates :foodstyle_category_id, presence: { message: "You should choose a foodstyle." }

end
