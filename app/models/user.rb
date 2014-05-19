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
  IGNIS_EXP = %w(0-Month 1-Month 2-Month 3-Month 4-Month 5-Month 6-Month 7-Month 8-Month 9-Month 10-Month 11-Month 12-Month)
  NOTICE_PERIOD = %w(No 15-Days 30-Days 45-Days 60-Days)
  COMMITMENT = %w(6-Month 1-Year 2-Year 3-year)

  has_many :leave, :dependent => :destroy
  has_many :skills
  def self.search(search)
    if search
      find(:all, :conditions => ['emp_name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

end
