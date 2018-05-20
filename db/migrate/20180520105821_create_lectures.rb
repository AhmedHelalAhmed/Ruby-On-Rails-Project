class CreateLectures < ActiveRecord::Migration[5.1]

  def up
    create_table :lectures do |t|
      t.string :attachment
      t.text :content
      t.integer :user_id
      t.integer :course_id
    end
  end

  def down
    drop_table :lectures
  end

end
