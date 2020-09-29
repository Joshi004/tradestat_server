class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :trade_session, null: false, foreign_key: true
      t.references :trade, null: false, foreign_key: true
      t.text :message
      t.column :type, "enum('ionitial_trading_strategy','conclusion','mental_state','misclinious')", :null=>false
      t.timestamps
    end
  end
end
