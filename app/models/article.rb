class Article < ApplicationRecord
  # validates :description, presence: true
  validates :title, uniqueness: true
  # validates :image_url,allow_blank: true, format: {
  #   with: %r{\.(gif|jpg|png)\z}i,
  #   message: "must be a URL for GIF, JPG or PNG image."
  # }
end
