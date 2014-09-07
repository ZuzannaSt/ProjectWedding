class Tag < ActiveRecord::Base
	has_and_belongs_to_many :invitations, join_table: :invitations_tags

	validates_uniqueness_of :tag_name
end
