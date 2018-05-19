class AddDateOfBirthToUsers < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :date_of_birth, :datetime
  end

  def down
    remove_column :users, :date_of_birth
  end

end
