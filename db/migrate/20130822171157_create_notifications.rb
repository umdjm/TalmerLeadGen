class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
   	  t.string :status
      t.references :lead

      t.timestamps
    end
    add_index :notifications, :lead_id
  end
end
