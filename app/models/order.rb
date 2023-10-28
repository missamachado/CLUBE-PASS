class Order < ApplicationRecord
  belongs_to :user
  belongs_to :club_pass
end
