class Contact < ApplicationRecord
  
  validates :email, length: {maximum: 35}
  validates :email, length: {minimum: 5}
  validates :message, presence: true
  validates :message, length: {maximum: 500}

end
