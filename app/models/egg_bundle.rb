class EggBundle < ApplicationRecord
    belongs_to :flock
    validates :amount, presence: true
    validates :start_date, presence: true
end
