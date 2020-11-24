class Game < ApplicationRecord
  belongs_to :users
  validates :user, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :platform, presence: true
end
