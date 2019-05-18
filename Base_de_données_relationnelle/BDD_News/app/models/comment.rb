class Comment < ApplicationRecord
  belongs_to :post
  has_many :followcomments
end
