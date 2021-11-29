 # Generated from command:
 # bin/rails generate migration AddPostToComments post:references
class AddPostToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :post, null: true, foreign_key: true
  end
end
