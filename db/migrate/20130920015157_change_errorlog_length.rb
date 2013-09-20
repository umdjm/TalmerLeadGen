class ChangeErrorlogLength < ActiveRecord::Migration
  def change
    change_column :errorlogs, :leaddata, :string, :limit => 10000
  end

  def down
  end
end
