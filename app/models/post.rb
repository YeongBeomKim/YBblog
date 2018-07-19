class Post < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :user
  has_and_belongs_to_many :tags
  has_many :comments
  has_many :likes

  mount_uploader :photo, PhotoUploader
end
