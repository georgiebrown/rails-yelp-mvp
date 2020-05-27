class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese italian japanese french belgian)
  validates :name, :address, :category, :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
