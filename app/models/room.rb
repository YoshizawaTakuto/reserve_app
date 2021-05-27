class Room < ApplicationRecord
    belongs_to :user
    has_one :reserve

    validates :name, {presence: true}
    validates :content, {presence: true}
    validates :fee, {presence: true}
    validates :address, {presence: true}
    validates :image, {presence: true}
    mount_uploader :image, ImageUploader
end
