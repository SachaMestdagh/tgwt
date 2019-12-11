class Continent < ApplicationRecord
  belongs_to :user

  has_many :countries, dependent: :destroy
  validates :name, presence: true
end
