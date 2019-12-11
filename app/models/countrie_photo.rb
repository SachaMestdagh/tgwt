class CountriePhoto < ApplicationRecord
  belongs_to :countrie
  mount_uploader :photo, PhotoUploader

end
