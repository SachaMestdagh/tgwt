class ContinentPhoto < ApplicationRecord
  belongs_to :continent
  mount_uploader :photo, PhotoUploader

end
