class Member < ApplicationRecord
    has_many :family_members, dependent: :destroy
    has_many :messages, dependent: :destroy
    has_many :families, through: :family_members

    has_secure_password
end
