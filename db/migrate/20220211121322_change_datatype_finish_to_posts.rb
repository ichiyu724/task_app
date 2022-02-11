class ChangeDatatypeFinishToPosts < ActiveRecord::Migration[6.1]
  def up
    change_column :posts, :finish, :datetime, using: "finish::datetime"
  end

  def down 
    change_column :posts, :finish, :date, using: "finish::date"
  end
end
