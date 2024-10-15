class Geek < ApplicationRecord
    has_many :applies

    validates :name, presence: true, length: { maximum: 50 }
    validates :stack, presence: true, length: { maximum: 50 }

end
