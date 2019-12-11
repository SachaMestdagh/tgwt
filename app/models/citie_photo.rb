class CitiePhoto < ApplicationRecord
  belongs_to :citie
  mount_uploader :photo, PhotoUploader

end
