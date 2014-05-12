class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :emp_name
      t.string :image
      t.integer :emp_id
      t.string :email
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

      t.timestamps
    end
  end
end
