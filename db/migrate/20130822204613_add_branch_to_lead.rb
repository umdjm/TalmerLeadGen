class AddBranchToLead < ActiveRecord::Migration
  def change
    add_column :leads, :branch, :string
  end
end
