class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :add_skill
      t.integer :user_id
      t.timestamps
    end
  end
end
