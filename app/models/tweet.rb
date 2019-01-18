class Tweet < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments, foreign_key: "tweet_id", dependent: :destroy
  mount_uploader :image, ImageUploader
end
