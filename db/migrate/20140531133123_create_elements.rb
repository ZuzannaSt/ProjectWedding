class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
    	t.string :name
    	t.string :element_id

      t.timestamps
    end
  end
end
