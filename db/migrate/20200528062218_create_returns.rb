class CreateReturns < ActiveRecord::Migration[5.0]
  def change
    create_table :returns do |t|
      t.string :return_text
      t.string :return_image
      t.references :post, null: false, foreign_key: true
      t.timestamps
    end
  end
end
