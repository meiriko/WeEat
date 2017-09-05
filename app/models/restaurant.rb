class Restaurant < ApplicationRecord
    validates :name, :cuisine, :address, presence: true
    validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 3 }
    validates :max_delivery_time, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
