class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: { minimum: 3, maximum: 55}
  validates :description, presence: true, length: { minimum: 10, maximum: 305 }
  validates :user_id, presence: true
end