class Figure < ApplicationRecord
  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
end
