class ChangeDatatypeFinishOfPosts < ActiveRecord::Migration[6.1]
  def up
    change_column :posts, :finish, :date, using: "finish::date"
  end

  def down 
    change_column :posts, :finish, :string, using: "finish::string"
  end
end
