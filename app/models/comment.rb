class Comment < ApplicationRecord
  belongs_to :trade_session
  belongs_to :trade
end
