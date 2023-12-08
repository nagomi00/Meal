class FoodTagRelation < ApplicationRecord
  belongs_to :food
  belongs_to :tag
end
