class Photo < ActiveRecord::Base
  belongs_to :invitation
  has_attached_file :image

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def remove_self
    @remove_self ||= false
  end

  def remove_self=(value)
    @remove_self = (value == "1")
  end
end
