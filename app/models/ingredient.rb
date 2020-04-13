class Ingredient < ApplicationRecord
  has_one_attached :photo

  has_many :recipes
end
