class CreateTrades < ActiveRecord::Migration[6.0]
  def change
    create_table :trades do |t|
      t.references :trade_session, null: false, foreign_key: true
      t.references :asset_isin_number, references: :assets, null: false
      t.float :cost_price
      t.float :selling_price
      t.float :stop_loss
      t.float :target
      t.column :type, "enum('buy','sell')", :null=>false
      t.integer :quantity
      t.integer :indicated_quantity
      t.boolean :is_active

      t.timestamps
    end
  end
end
