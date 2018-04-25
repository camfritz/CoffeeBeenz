class CreateDrinks < ActiveRecord::Migration[5.1]
	def change
		create_table :drinks do |t|
			t.string :name
			t.string :bean
			t.integer :size
			t.boolean :togo

			t.timestamps
		end
	end
end
