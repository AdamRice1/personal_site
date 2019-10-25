class Contact < ApplicationRecord
    validates :name, presence: true, length: { in: 2..20 }
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :email, presence: true, format: { with: EMAIL_REGEX }
    validates :message, presence: true

end
