class Customer < ApplicationRecord
  validates :fullName, presence:true
end
