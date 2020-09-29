class CreateFundTransctions < ActiveRecord::Migration[6.0]
  def change
    create_table :fund_transctions do |t|
      t.string :type
      t.references :trade_session, null: false, foreign_key: true
      t.references :trade, null: false, foreign_key: true
      t.timestamps
    end
  end
end
