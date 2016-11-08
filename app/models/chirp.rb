class Chirp < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  validates :body, presence: true
  validates :user_id, presence: true
end
