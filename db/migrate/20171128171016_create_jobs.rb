class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.string :origin
      t.string :destination
      t.integer :cost
      t.integer :capacity

      t.timestamps
    end
  end
end
