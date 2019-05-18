class User < ApplicationRecord
  belongs_to :city
  has_many :gossips
 # has_many :tags
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "Pm"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "Pm"

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :description, presence: true
  validates :age, presence: true
end
