# Generated from command:
# bin/rails g model Comment content:text name:string post:references --force
class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.string :name
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
