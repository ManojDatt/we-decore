ActiveAdmin.register Project do

permit_params :id, :location, :customer_name, :customer_contact, :customer_other_details, :project_budget_details, :discription

index do 
    selectable_column 
    column :location
    column :customer_name
    column :customer_contact
    actions
end

show do |f|
		attributes_table do
			row :id
			row :location
			row :customer_name
			row :customer_contact
			row :customer_other_details
			row :project_budget_details
			row :discription
      end
end

end
