class Like < ApplicationRecord
  validates :user_id, presence: true, uniqueness: {scope: :micropost_id}
  validates :micropost_id, presence: true
  belongs_to :micropost
  belongs_to :user
end