class AddJobIdAndBoatIdToShipmentModel < ActiveRecord::Migration[5.1]
  def change
    add_column :shipments, :job_id, :integer
    add_column :shipments, :boat_id, :integer
  end
end
