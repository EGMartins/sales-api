class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :apn_code
      t.decimal :r_r_p, precision: 5, scale: 2
      t.decimal :last_buy_price, precision: 5, scale: 2
      t.string :item_description
      t.string :author
      t.string :product_category
      t.integer :actual_stock_on_hand
      t.date :trans_date
      t.string :trans_time
      t.string :trans_document_number
      t.string :trans_reference_number
      t.integer :trans_quantity
      t.decimal :total_extax_value, precision: 5, scale: 2
      t.decimal :total_tax, precision: 5, scale: 2
      t.decimal :discount_given, precision: 3, scale: 2

      t.timestamps
    end
  end
end
