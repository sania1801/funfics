class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.string :achieve_comment
      t.string :achieve_likes
      t.string :achieve_post
      t.string :achieve_time
      t.timestamps
    end
  end
end
