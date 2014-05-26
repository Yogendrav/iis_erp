ActiveAdmin.register Profile do
  menu :if => proc{ current_admin_user.role?(:admin) }, :priority => 4
	actions :index, :new, :create
  index do
  	column :emp_name
    column :image
    column :emp_id
    column :email
    column :designation
    column :department
    column :date_of_join
    column :notice_period
    column :commitment_period
    column :pan_no
    column :pf_no
    column :esi_no
    column :bank_account
    column :experience_at_joining
    column :exp_in_iis
    column :total_exp
    column :increament
    column :father_name
    column :mother_name
    column :dob
  	column :current_address
    column :permanent_address
    column :gender
    column :contact_no
    column :mobile_no1
    column :mobile_no2
    column :personal_email
    column :blood_group
    column :highest_education
    column :language
    column :primary_skills
    column :secondary_skills
    column :marrital_status
    column :spouse_name
    column :date_of_aniversary
    column :passport_no
    default_actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs do
      f.input :emp_name
      f.input :image
      f.input :image_cache, :as => :hidden
      f.input :emp_id
      f.input :email
      f.input :designation, :as => :select, :collection => Profile::DESIGNATION, :include_blank =>false, :prompt => "Please select designation"
      f.input :department, :as => :select, :collection => Profile::DEPARTMENT, :include_blank => false, :prompt => "Please select department"
      f.input :date_of_join, :as => :datepicker
      f.input :notice_period
      f.input :commitment_period
      f.input :pan_no
      f.input :pf_no
      f.input :esi_no
      f.input :bank_account
      f.input :experience_at_joining
      f.input :exp_in_iis
      f.input :total_exp
      f.input :increament
      f.input :father_name
      f.input :mother_name
      f.input :dob, :as => :datepicker
      f.input :current_address
      f.input :permanent_address
      f.input :gender, :as => :select, :collection => Profile::GENDER, :include_blank => false, :prompt => "Please select gender"
      f.input :contact_no
      f.input :mobile_no1
      f.input :mobile_no2
      f.input :personal_email
      f.input :blood_group
      f.input :highest_education, :as => :select, :collection => Profile::EDUCATION, :include_blank => false, :prompt => "Please select highest education"
      f.input :language
      f.input :primary_skills
	    f.input :secondary_skills
      f.input :marrital_status, :as => :select, :collection => Profile::MSTATUS, :include_blank => false, :prompt => "Please select marrital status"
	    f.input :spouse_name
	    f.input :date_of_aniversary, :as => :datepicker
	    f.input :passport_no
    end
    f.actions
  end

end
