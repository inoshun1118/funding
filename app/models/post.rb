class Post < ApplicationRecord
  validates :title, :text, :image, presence: true
end
