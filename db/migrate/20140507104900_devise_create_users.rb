class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      #Added columns#
      t.string :emp_name
      t.string :image
      t.integer :emp_id
      t.string :designation
      t.string :department
      t.string :date_of_join
      t.string :notice_period
      t.string :commitment_period
      t.string :pan_no
      t.string :pf_no
      t.string :esi_no
      t.integer :bank_account
      t.integer :experience_at_joining
      t.string :exp_in_iis
      t.string :total_exp
      t.string :increament
      t.string :father_name
      t.string :mother_name
      t.datetime :dob
      t.text :current_address
      t.text :permanent_address
      t.string :gender
      t.integer :contact_no
      t.integer :mobile_no1
      t.integer :mobile_no2
      t.string :personal_email
      t.string :blood_group
      t.string :highest_education
      t.string :second_highest_education
      t.string :language
      t.string :primary_skills
      t.string :secondary_skills
      t.string :marrital_status
      t.string :spouse_name
      t.datetime :date_of_aniversary
      t.string :passport_no
      
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
