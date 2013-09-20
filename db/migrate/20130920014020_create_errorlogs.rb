class CreateErrorlogs < ActiveRecord::Migration
  def change
    create_table :errorlogs do |t|
      t.string :url
      t.string :errormessage
      t.string :leaddata

      t.timestamps
    end
  end
end
