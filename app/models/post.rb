class Post < ApplicationRecord
  validates :title, :text, :image, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user, optional: true
  has_many :backers
end
