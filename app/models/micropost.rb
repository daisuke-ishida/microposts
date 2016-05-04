class Micropost < ActiveRecord::Base
  belongs_to :user
<<<<<<< HEAD
<<<<<<< HEAD
=======
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
>>>>>>> user-profile
=======
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
>>>>>>> user-profile
end
