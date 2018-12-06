class Resto < ApplicationRecord
  validates :name, presence: { message: "Vous devriez mettre un nom pour le restaurant." }
  validates :name, uniqueness: { message: "Ce nom existe déjà." }
  validates :address, presence: { message: "Vous devriez mettre une adresse pour le restaurant." }
end
