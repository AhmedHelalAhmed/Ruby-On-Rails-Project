ActiveAdmin.register User do

  permit_params :name , :email , :encrypted_password , :country_id
  index do
    selectable_column
    id_column
    column :email
    column :created_at
    actions
  end


  show do |user|
    attributes_table do
      row :email
    end
  end

end