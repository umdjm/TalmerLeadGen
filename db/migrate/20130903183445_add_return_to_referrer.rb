class AddReturnToReferrer < ActiveRecord::Migration
  def change
    add_column :referrers, :return_url, :string
  end
end
