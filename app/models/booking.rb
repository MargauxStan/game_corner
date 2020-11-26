class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :game
  attribute :status, default: 'pending'
end
