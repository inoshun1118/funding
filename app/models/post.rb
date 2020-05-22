class Post < ApplicationRecord
  validates :title, :text, :image, presence: true
  has_many :images
end
