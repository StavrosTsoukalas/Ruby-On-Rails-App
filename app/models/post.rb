class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  default_scope -> { includes(:user).order(created_at: :desc) }
end
