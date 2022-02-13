class Buy < ApplicationRecord
  belongs_to :post
  belongs_to :user
  # has_one :user
end
