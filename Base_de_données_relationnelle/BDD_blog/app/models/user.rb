class User < ApplicationRecord
  has_many :articles
  has_many :coments
  has_many :likes
end
