class CreateJoinTableCoffeeShopsDrinks < ActiveRecord::Migration[5.1]
  def change
    create_join_table :coffee_shops, :drinks do |t|
      # t.index [:coffee_shop_id, :drink_id]
      # t.index [:drink_id, :coffee_shop_id]
    end
  end
end
