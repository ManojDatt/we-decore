ActiveAdmin.register Service do
permit_params :image, :title, :description

index do 
    selectable_column 
    column :title
    column :image do |team|
		image_tag team.image, width: "50%"
	end
    actions
end

show do |f|
		attributes_table do
			row :id
			row :title
			row :description
			row :created_at
		    row :image do |team|
		        image_tag team.image
		    end
      end
end
end
