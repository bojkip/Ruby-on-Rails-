class Category < ApplicationRecord
  validates :name, presence: true, length: {minimum: 3, maximum: 25 }
  has_many :article_categories
  has_many :articles, through: :article_categories
  validates_uniqueness_of :name
end