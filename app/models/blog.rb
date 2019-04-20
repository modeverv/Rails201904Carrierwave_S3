class Blog < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :campaigns
  has_one_attached :img
end
