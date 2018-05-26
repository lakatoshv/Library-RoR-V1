class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :auth
      t.string :zhanr
      t.string :pages_qty
      t.text :description
      t.text :mini_description
      t.integer :likes_qty
      t.integer :dislikes_qty
      t.string :image_url
      t.timestamps
    end
  end
end
