ActiveAdmin.register Food do
permit_params :key_label, :image, :name, :discription

index do 
    selectable_column 
    column :name
    column :key_label
    column :image do |team|
		image_tag team.image, width: "50%"
	end
    actions
end


form do |f|
  f.inputs do
  	f.input :name
    f.input :key_label, :label => 'Category', :as => :select, collection: Food.key_labels
    f.input :discription
    f.input :image
    f.actions
  end
end

end
