class AddGenderToUsers < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :gender, :integer
  end
  def down
    remove_column :users, :gender
  end
end
