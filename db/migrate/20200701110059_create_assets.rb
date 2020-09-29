class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :symbol
      t.string :name
      t.string :series
      t.date :date_of_listing
      t.integer :paid_up_value
      t.string :isin_number
      t.integer :face_value
      t.timestamps
    end
  end
end
