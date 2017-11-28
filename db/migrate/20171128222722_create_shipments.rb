class CreateShipments < ActiveRecord::Migration[5.1]
  def change
    create_table :shipments do |t|
      t.string :origin
      t.string :destination
      t.string :delivery
      t.timestamps
    end
  end
end
