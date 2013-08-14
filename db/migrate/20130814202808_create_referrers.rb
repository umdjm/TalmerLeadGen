class CreateReferrers < ActiveRecord::Migration
  def change
    create_table :referrers do |t|
      t.string :url

      t.timestamps
    end
  end
end
