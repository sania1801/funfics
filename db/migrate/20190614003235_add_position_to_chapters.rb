class AddPositionToChapters < ActiveRecord::Migration[5.2]
  def change
    add_column :chapters, :position, :integer
  end
end
