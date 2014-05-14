class AddColumnToLeaves < ActiveRecord::Migration
  def change
    add_column :leaves, :leave_status, :boolean
  end
end
