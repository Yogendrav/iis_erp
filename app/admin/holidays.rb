ActiveAdmin.register Holiday do
	menu :priority => 3
  index do
		column :date
		column :name
		default_actions
  end
  form do |f|
  	f.inputs do
	  	f.input :name, :as => :select, :collection => Holiday::NAME, :include_blank => false, :prompt => "Please select holiday name"
	    f.input :date, :as => :datepicker
	  end
	  f.actions
  end
end
