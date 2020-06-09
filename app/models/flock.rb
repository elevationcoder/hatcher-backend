class Flock < ApplicationRecord
    has_many :egg_bundles
    validates :name, presence: true
    
end
