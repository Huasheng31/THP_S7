class Tag < ApplicationRecord
 # belongs_to :user
  has_many :gossiptags
  has_many :gossips, through: :gossiptags
  validates :title, presence: true
#             length: {minimum: 10}
end
