class Post < ActiveRecord::Base
  acts_as_votable
  mount_uploader :image_file_name, PostUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :notifications, dependent: :destroy

  validates :user_id, presence: true
  validates :image_file_name, presence: true
  validates :caption, length: {minimum: 3, maximum: 300}

  #has_attached_file :image, styles: { :medium => "640x" }
  # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  def image
    image_file_name
  end
end
