class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.integer :number
      t.string :title
      t.text :body
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
