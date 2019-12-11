class VisitPhoto < ApplicationRecord
  belongs_to :visit
  mount_uploader :photo, PhotoUploader

end
