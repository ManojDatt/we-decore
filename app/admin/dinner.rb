ActiveAdmin.register Dinner do

permit_params :food_id, :admin_user_id, :message

index do 
    selectable_column 
    column "Dinner Food", :food_id
    column "Member", :admin_user_id
    column :created
    column :message
    actions
end


form do |f|
  f.inputs do
  	f.input :food_id, :as => :select, collection: Food.dinners
    f.input :admin_user_id, label: "Member", :as => :select, collection: AdminUser.where(role: 'guest')
    f.input :message
    f.actions
  end
end

end
