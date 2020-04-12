class Recipe < ApplicationRecord
  belongs_to :category
  belongs_to :ingredient

  validates :name, :prep_time, :ingredients_list, :preparation, :category_id, :ingredient_id, presence: true
end
