class SleepPhoto < ApplicationRecord
  belongs_to :sleep
  mount_uploader :photo, PhotoUploader

end
