ActiveAdmin.register Skill do
	menu :priority => 5
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
