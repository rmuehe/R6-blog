class Comment < ApplicationRecord
  # this saves a method named "post" to all Comment objects 
  belongs_to :post
end
