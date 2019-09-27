class Message < ApplicationRecord
  belongs_to :family
  belongs_to :member
end
