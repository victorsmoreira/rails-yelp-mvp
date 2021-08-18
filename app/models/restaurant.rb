class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian].freeze
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORY }
  validates :name, :address, :category, presence: true
end
