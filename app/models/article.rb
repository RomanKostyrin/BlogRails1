class Article < ApplicationRecord
  has_many :comments
  validates :title, length: {minimum: 5}
  validates :text, length: {minimum: 10}
  
end
