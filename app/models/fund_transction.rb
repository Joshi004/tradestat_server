class FundTransction < ApplicationRecord
  belongs_to :trade_session
  belongs_to :trade
end
