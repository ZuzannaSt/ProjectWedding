class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :name
      t.references :collection, index: true
      t.references :colors, index: true
      t.timestamps
    end
  end
end
