class AddUserToActiveAdminComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :active_admin_comments, :user, foreign_key: true
  end
end
