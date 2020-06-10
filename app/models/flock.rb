class Flock < ApplicationRecord
    has_many :egg_bundles
    validates :name, presence: true


    def update_quantity(flock)
        if flock.quantity == 'increase'
            self.quantity == self.quantity + flock.quantity
            self.save
        elsif flock.quantity == 'decrease'
            if self.quantity >= flock.quantity
                self.save
                self.quantity == self.quantity - flock.quantity
            else
                return "No chickens in this flock!"
            end
        end
    end

end
