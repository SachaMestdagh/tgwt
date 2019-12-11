class Citie < ApplicationRecord
  belongs_to :countrie

  has_many :visits, dependent: :destroy
  has_many :eats, dependent: :destroy
  has_many :sleeps, dependent: :destroy
  validates :name, presence: true
end
