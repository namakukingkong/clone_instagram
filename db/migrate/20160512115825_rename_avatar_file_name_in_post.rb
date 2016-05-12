class RenameAvatarFileNameInPost < ActiveRecord::Migration
  def change
    rename_column :posts, :avatar_file_name, :image_file_name
  end
end
