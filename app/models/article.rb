class Article < ApplicationRecord
  has_many_attached :images
  validates :title, :content, presence: true
end
