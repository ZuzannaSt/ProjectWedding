class Collection < ActiveRecord::Base
	has_many :invitations
	has_attached_file :cover
  
  	validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
	validates_presence_of :name
end
