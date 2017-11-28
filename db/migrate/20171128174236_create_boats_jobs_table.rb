class CreateBoatsJobsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :boats_jobs do |t|
      t.belongs_to :boat, index: true
      t.belongs_to :job, index: true
    end
  end
end
