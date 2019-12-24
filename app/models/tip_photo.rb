class TipPhoto < ApplicationRecord
  belongs_to :tip
  mount_uploader :photo, PhotoUploader
end
