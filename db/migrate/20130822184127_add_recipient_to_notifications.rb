class AddRecipientToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :recipients, :string
  end
end
