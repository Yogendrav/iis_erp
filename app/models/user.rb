class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email,
                  :password,
                  :password_confirmation,
                  :remember_me,
                  :bank_account,
                  :blood_group,
                  :commitment_period,
                  :contact_no,
                  :current_address,
                  :date_of_aniversary,
                  :date_of_join,
                  :department,
                  :designation,
                  :dob,
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

  DESIGNATION = %w(Fresher Trainee Jr.Developer Developer Sr.Developer Designer Sr.Designer HR)
  DEPARTMENT = %w(RoR Mobile Designing Php)
  GENDER = %w(Male Female)
  EDUCATION = %w(MCA BE/BTech B.Sc Diploma)
  MSTATUS = %w(Y N)

  def self.search(search)
    if search
      find(:all, :conditions => ['emp_name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end
