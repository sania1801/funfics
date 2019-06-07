ActiveAdmin.register User do
permit_params :email, :username, :user_id, :post_id

end
