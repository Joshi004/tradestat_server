class Trade < ApplicationRecord
  belongs_to :trade_session
  belongs_to :asset
  has_many :comment
  has_one :fund_transaction
end
