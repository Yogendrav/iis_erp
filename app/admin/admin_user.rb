ActiveAdmin.register AdminUser do
  menu :priority => 2
  ROLES = %w(superadmin admin)
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
        f.input :role, :as => :select, :collection => AdminUser::ROLES, :include_blank =>false
      else
        f.input :role, :as => :hidden, :value => ROLES.last
      end
    end
    f.actions
  end

end
