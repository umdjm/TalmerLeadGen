class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
