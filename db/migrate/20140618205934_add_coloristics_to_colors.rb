class AddColoristicsToColors < ActiveRecord::Migration
  def self.up
    add_attachment :colors, :coloristic
  end

  def self.down
    remove_attachment :colors, :coloristic
  end
end
