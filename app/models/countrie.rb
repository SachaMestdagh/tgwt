class Countrie < ApplicationRecord
  belongs_to :continent

  has_many :cities, dependent: :destroy
  validates :name, presence: true
end
