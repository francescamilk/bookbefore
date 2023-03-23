class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :tagline
      t.text   :description
      t.string :category
      t.float  :price

      t.timestamps
    end
  end
end
