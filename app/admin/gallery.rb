ActiveAdmin.register Gallery do
permit_params :id, :image, :title, :service_id, :project_id, :recomended

index do 
    selectable_column 
    column :title
    column :recomended
    column :image do |team|
		image_tag team.image, width: "50%"
	end
	column :service_id
    actions
end

show do |f|
		attributes_table do
			row :id
			row :title
			row :service_id
			row :created_at
			row :project_id
			row :recomended
		    row :image do |team|
		        image_tag team.image
		    end
      end
end

end
