class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :title
      t.text :description
      t.float :price

      t.timestamps null: false
    end
  end
end
