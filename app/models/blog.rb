class Blog < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :campaigns
  has_one_attached :img
  has_many :blog_tags
  has_many :tags, through: :blog_tags
end
