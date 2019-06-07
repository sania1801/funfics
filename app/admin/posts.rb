ActiveAdmin.register Post do
permit_params :title, :description, :user_id, :chapter_id, :comment_id
end
