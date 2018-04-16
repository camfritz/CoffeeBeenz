class CreateCoffeeShops < ActiveRecord::Migration[5.1]
  def change
    create_table :coffee_shops do |t|
      t.string :name
      t.integer :closing_time
      t.integer :popularity
      t.string :city
      t.string :bean_origin

      t.timestamps
    end
  end
end
