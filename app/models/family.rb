class Family < ApplicationRecord
    has_many :family_members, dependent: :destroy
    has_many :messages, dependent: :destroy
    has_many :members, through: :family_members
end
