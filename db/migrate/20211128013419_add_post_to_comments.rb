# result following command:
# => bin/rails g migration AddPostToComments post_id:integer:index
class AddPostToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :post_id, :integer
    add_index :comments, :post_id
  end
end
