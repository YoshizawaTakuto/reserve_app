class Reserve < ApplicationRecord
    belongs_to :user
    belongs_to :room

    validates :start_day, {presence: true}
    validates :end_day, {presence: true}
    validates :day_count, {presence: true}
    validates :total_fee, {presence: true}
end
