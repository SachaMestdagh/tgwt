class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  has_many :article_photos, dependent: :destroy

  default_scope { order(created_at: :desc)}


  attr_accessor :photo_list

   before_validation :set_pictures_error, on: :create
   after_create :save_photos

    def set_pictures_error
    self.errors.add(:article_photos, "Please add some pictures of the article.") if self.photo_list.nil?
  end

  def save_photos
    return if self.photo_list == 0
    self.photo_list.each do |photo|
       po = Cloudinary::Uploader.upload(photo)
       article_photos = ArticlePhoto.new(article: self)
       article_photos.remote_photo_url = po["url"]
       article_photos.save
     end
  end
end
