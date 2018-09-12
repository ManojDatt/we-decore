ActiveAdmin.register AboutUs do
permit_params :picture, :logo, :title, :message

index do 
    selectable_column 
    column :title
    column :logo do |team|
		image_tag team.logo, width: "50%"
	end
    column :picture do |team|
		image_tag team.picture, width: "50%"
	end
    actions
end

show do |f|
		attributes_table do
			row :id
			row :logo do |team|
				image_tag team.logo, width: "50%"
			end
			row :title
			row :message
			row :created_at

		    row :picture do |team|
		        image_tag team.picture
		    end
      end
end

end
