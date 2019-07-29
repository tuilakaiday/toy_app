class User < ApplicationRecord
  has_many :micros
  validates :email, presence: true    # Replace FILL_IN with the right code.
end
