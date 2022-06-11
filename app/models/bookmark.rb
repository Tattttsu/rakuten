class Bookmark < ApplicationRecord
  belongs_to :user
  validates :itemCode, presence: true 
end
