class User < ApplicationRecord
    before_save {self.email = email.downcase}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}
    validates :name, presence:true
    validates :email, uniqueness: true
    has_secure_password
end
