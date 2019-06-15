ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :gender, :active

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :active
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  filter :active


  form do |f|
    f.inputs do
      f.input :email
      # f.input :password
      # f.input :password_confirmation
      f.input :active
    end
    f.actions
  end
end
