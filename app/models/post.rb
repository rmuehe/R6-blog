class Post < ApplicationRecord
  # this saves a method named "comments" to all Post objects 
  has_many :comments
end
