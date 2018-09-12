ActiveAdmin.register Testimonial do
permit_params :description, :author

index do 
    selectable_column 
    column :id
    column :description
    column :author
    actions
end
end
