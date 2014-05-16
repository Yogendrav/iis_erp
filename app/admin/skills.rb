ActiveAdmin.register Skill do
  index do
		column :add_skill
		default_actions
  end
  form do |f|
  	f.inputs do
	    f.input :add_skill
	  end
	  f.actions
  end
end
