class AddUserColumnsToRepairRequest < ActiveRecord::Migration
  def change
    add_column :repairrequests, :submitter_id, :integer
    add_column :repairrequests, :responder_id, :integer
  end
end
