class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 15 }
  validates :summary, length: { maximum: 30 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validates :title, format: { with: /\A(You Won't Believe)/ }
end
