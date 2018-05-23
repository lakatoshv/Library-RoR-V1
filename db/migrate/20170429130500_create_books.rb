class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :auth
      t.string :zhanr
      t.string :pages_qty
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
