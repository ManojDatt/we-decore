ActiveAdmin.register Team do
permit_params :name, :image, :designation, :introduction

index do 
    selectable_column 
    column :name
    column :designation
    column :image do |team|
		        image_tag team.image
		    end
    actions
end

show do |f|
		attributes_table do
			row :id
			row :name
			row :designation
			row :introduction
			row :created_at
		    row :image do |team|
		        image_tag team.image
		    end
      end
end

end
