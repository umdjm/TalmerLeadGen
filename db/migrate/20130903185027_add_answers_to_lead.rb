class AddAnswersToLead < ActiveRecord::Migration
  def change
    add_column :leads, :answers, :string
  end
end
