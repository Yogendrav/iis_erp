class Profile < ActiveRecord::Base
  attr_accessible :bank_account,
                  :blood_group,
                  :commitment_period,
                  :contact_no,
                  :current_address,
                  :date_of_aniversary,
                  :date_of_join,
                  :department,
                  :designation,
                  :dob,
                  :email,
                  :esi_no,
                  :exp_in_iis,
                  :experience_at_joining,
                  :father_name,
                  :gender,
                  :highest_education,
                  :image,
                  :increament,
                  :language,
                  :marrital_status,
                  :mobile_no1,
                  :mobile_no2,
                  :mother_name,
                  :notice_period,
                  :pan_no,
                  :passport_no,
                  :permanent_address,
                  :personal_email,
                  :pf_no,
                  :primary_skills,
                  :second_highest_education,
                  :secondary_skills,
                  :spouse_name,
                  :total_exp,
                  :emp_id,
                  :emp_name,
                  :image_cache
  mount_uploader :image, ImageUploader

  belongs_to :user

  DESIGNATION = %w(Fresher Trainee Jr.Developer Developer Sr.Developer Designer Sr.Designer)
  DEPARTMENT = %w(RoR Mobile Designing Php)
  GENDER = %w(Male Female)
  EDUCATION = %w(MCA BE/BTech B.Sc Diploma)
  MSTATUS = %w(Y N)
end
