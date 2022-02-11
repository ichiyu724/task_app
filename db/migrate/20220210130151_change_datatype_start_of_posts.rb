class ChangeDatatypeStartOfPosts < ActiveRecord::Migration[6.1]
  def up
    change_column :posts, :start, :date, using: "start::date"
  end

  def down 
    change_column :posts, :start, :string, using: "start::string"
  end
end
