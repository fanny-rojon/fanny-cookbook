class Recipe < ApplicationRecord
  has_one_attached :photo

  belongs_to :category
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  validates :name, :prep_time, :ingredients_list, :preparation, :category_id, presence: true
end
