class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :type_building
      t.integer :number_appartement
      t.integer :number_floor
      t.integer :number_basement
      t.integer :number_compagny
      t.integer :number_parking
      t.integer :number_elevator
      t.integer :number_corporate
      t.integer :max_occupancy
      t.integer :business_hour
      t.string :ele_standard
      t.string :ele_premium
      t.string :ele_excelium
      t.integer :ele_amount
      t.integer :ele_price_unit
      t.integer :ele_total_price
      t.integer :inst_fee
      t.integer :final_price

      t.timestamps
    end
  end
end
