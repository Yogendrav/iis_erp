class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.datetime :date_from
      t.datetime :date_to
      t.text :description

      t.timestamps
    end
  end
end
