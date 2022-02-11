class ChangeDataPostsStartToDatetime < ActiveRecord::Migration[6.1]
  def up
    change_column :posts, :start, :datetime, using: "start::datetime"
  end

  def down 
    change_column :posts, :start, :date, using: "start::date"
  end
end
