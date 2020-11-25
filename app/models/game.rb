class Game < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :user, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :platform, presence: true
end
