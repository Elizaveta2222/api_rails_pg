class Company < ApplicationRecord
    has_many :jobs

    validates :name, presence: true, length: { maximum: 50 }
    validates :location, presence: true, length: { maximum: 50 }

end
