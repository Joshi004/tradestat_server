class TradeSession < ApplicationRecord
  belongs_to :asset
  has_many :trade
  has_many :comment
  has_many :fund_transaction
end
