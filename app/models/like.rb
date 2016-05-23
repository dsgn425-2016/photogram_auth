class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :photo

  validate :user_can_only_vote_three_times


  def user_can_only_vote_three_times
    if Like.where(:user_id => self.user_id).count >= 3
      errors.add(:user_id, "has voted too many times")
    end
  end
end
