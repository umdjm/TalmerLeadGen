class AddPhoneAndAddressToLead < ActiveRecord::Migration
  def change
    add_column :leads, :phone, :string
    add_column :leads, :address, :string
    add_column :leads, :zip, :string
  end
end
