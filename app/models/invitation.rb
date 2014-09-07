class Invitation < ActiveRecord::Base
  belongs_to :collection
  has_and_belongs_to_many :colors, join_table: :invitations_colors
  has_and_belongs_to_many :tags, join_table: :invitations_tags
  has_and_belongs_to_many :elements, join_table: :invitations_elements
  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos
  before_validation { self.photos.each{|p| p.destroy if p.remove_self } }

  validates :name, :presence => true

  def tag_list
    self.tags.map { |t| t.tag_name }.join(", ")
  end

  def tag_list=(new_value)
  	tag_names = new_value.split(/,\s+/)
  	self.tags = tag_names.map { |tag_name| Tag.where('tag_name = ?', tag_name).first or Tag.create(:tag_name => tag_name) }
  end

  def delete_image
    @delete_image ||= false
  end

  def delete_image=(value)
    @delete_image  = !value.to_i.zero?
  end


end
