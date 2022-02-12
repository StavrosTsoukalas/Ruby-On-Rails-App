class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  default_scope -> { includes(:user).order(created_at: :desc) }
  scope :by_category, -> (branch, category_name) do 
    joins(:category).where(categories: {name: category_name, branch: branch}) 
  end

  scope :by_branch, -> (branch) do
    joins(:category).where(categories: {branch: branch}) 
  end

  scope :search, -> (search) do
    where("title LIKE lower(?) OR content LIKE lower(?)", "%#{search}%", "%#{search}%")
  end
  
  validates :title, presence: true, length: { minimum: 5, maximum: 255 }
  validates :content, presence: true, length: { minimum: 20, maximum: 1000 }
  validates :category_id, presence: true
end
