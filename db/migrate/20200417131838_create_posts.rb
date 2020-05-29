class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :text
      t.string :image
      t.string :target_value
      t.timestamps
    end
  end
end
