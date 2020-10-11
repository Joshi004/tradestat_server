class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets, id: false, primary_key: :isin_number do |t|
      t.string :isin_number, :primary_key => true
      t.string :symbol
      t.string :name
      t.string :series
      t.date :date_of_listing
      t.integer :paid_up_value
      t.integer :face_value
      t.integer :market_lot
      t.timestamps
    end
  end
end
