class Resto < ApplicationRecord
  has_many :surveys
  validates :name, presence: { message: "Vous devriez mettre un nom pour le restaurant." }
  validates :name, uniqueness: { message: "Ce nom existe déjà." }
end
