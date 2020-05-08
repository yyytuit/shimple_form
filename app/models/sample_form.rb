class SampleForm < ApplicationRecord
  validates :name, presence: true
  validates :number, presence: true
  validates :date_on, presence: true
  validates :truth, presence: true
  validates :categorise, presence: true
  validates :rating, presence: true
end
