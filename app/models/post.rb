class Post < ApplicationRecord
    validates :title, presence: true
    validates :start, presence: true
    validates :finish, presence: true
    validate :finish_check
    def finish_check
        if finish.nil? || finish < DateTime.current
        errors.add(:finish, "は今日以降の日付で選択してください")
        #binding.pry
        end
    end
end