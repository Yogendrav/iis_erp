class AddColumnToLeaves < ActiveRecord::Migration
  def change
    add_column :leaves, :request_approval, :boolean
  end
end
