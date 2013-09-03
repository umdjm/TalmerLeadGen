class AddCitystateToLead < ActiveRecord::Migration
  def change
    add_column :leads, :city, :string
    add_column :leads, :state, :string
  end
end
