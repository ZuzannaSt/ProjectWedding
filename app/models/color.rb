class Color < ActiveRecord::Base
  	has_and_belongs_to_many :invitations, join_table: :invitations_colors
  	has_attached_file :coloristic

  	validates_attachment_content_type :coloristic, :content_type => /\Aimage\/.*\Z/
  	validates_presence_of :color_name
end
