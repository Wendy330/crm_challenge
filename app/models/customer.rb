class Customer < ApplicationRecord
  belongs_to :province
  validates :fullName, presence:true
end
