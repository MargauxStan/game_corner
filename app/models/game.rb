class Game < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :user, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :platform, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_name_and_platform,
  against: [ :name, :platform ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
