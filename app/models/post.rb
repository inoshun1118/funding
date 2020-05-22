class Post < ApplicationRecord
  validates :title, :text, :image, presence: true
  mount_uploader :image, ImageUploader
end
