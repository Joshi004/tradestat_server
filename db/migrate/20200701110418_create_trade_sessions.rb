class CreateTradeSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :trade_sessions do |t|
      t.references :asset_isin_number,references: :assets, null: false
      t.timestamp :started_at
      t.timestamp :closed_at
      t.boolean :is_active
      t.column :type, "enum('trade','deposit','withdrawal')", :null=>false, :default => "trade"
      t.timestamps
    end
  end
end
