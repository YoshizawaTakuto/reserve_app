class User < ApplicationRecord
    has_secure_password
    has_many :rooms
    has_many :reserves

    validates :name, {presence: true, uniqueness: true}
    validates :email, {presence: true, uniqueness: true}
    validates :password, {confirmation: true}
    validates :password_confirmation, {presence: true}
    mount_uploader :image, ImageUploader

end
