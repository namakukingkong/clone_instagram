class AddAttachmentImageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :avatar_file_name, :string
  end
end
