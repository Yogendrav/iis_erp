ActiveAdmin.register AdminUser do
  menu :if => proc{ current_admin_user.role?(:superadmin) }, :priority => 2
  # permit_params :email, :password, :password_confirmation, :role
  # ROLES = %w(superadmin admin)
  debugger
  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  # filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      if super_admin?
        f.input :role, :as => :select, :collection => ROLES.map{|role| role.humanize}, :include_blank =>false
      else
        f.input :role, :as => :hidden, :value => ROLES.last
      end
    end
    f.actions
  end

end
