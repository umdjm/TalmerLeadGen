class ChangeErrorlogLength3 < ActiveRecord::Migration
  def change
    change_column :errorlogs, :errormessage, :string, :limit => 10000
  end

  def down
  end
end
