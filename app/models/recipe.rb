class Recipe < ApplicationRecord
  belongs_to :user
  attachment :image

  with_options presence: true do
    validates :recipe_title
    validates :recipe_details
    validates :image
  end
end
