class AddAuthorandPhototoPosts < ActiveRecord::Migration
  def change
    add_column :posts, :author, :string
    add_column :posts, :photo_url, :string
  end
end
