ActiveAdmin.register SocialLink do
permit_params :link_url, :link_name, :link_icon_class, :team_id

index do 
    selectable_column 
    column :id
    column :link_name
    column :team_id
    column :link_icon_class
    actions
end
end
