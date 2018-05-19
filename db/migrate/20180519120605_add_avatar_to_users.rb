class AddAvatarToUsers < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :avatar, :string
  end

  def down
    remove_column :users, :avatar
  end
end
