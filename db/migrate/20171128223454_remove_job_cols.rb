class RemoveJobCols < ActiveRecord::Migration[5.1]
  def change
    remove_column :jobs, :origin, :string
    remove_column :jobs, :destination, :string
  end
end
