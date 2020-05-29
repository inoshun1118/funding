class Post < ApplicationRecord
  validates :title, :text, :image, :target_value, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user, optional: true
  has_many :backers
  has_many :returns
end
