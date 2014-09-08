class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :color_name
      t.references :invitation, index: true

      t.timestamps
    end
  end
end
