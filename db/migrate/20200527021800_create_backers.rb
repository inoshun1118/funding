class CreateBackers < ActiveRecord::Migration[5.0]
  def change
    create_table :backers do |t|
      t.string :address, null: false
      t.string :money_value, null: false
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.timestamps
    end
  end
end
