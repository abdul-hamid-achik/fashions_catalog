class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string "name"
      t.string "brand"
      t.string "category"
      t.string "color"
      t.string "image"
    end
  end
end
