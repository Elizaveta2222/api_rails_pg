class Job < ApplicationRecord
    belongs_to :company
    has_many :applies

    validates_associated :company

    validates :name, presence: true, length: { maximum: 50 }
    validates :place, presence: true, length: { maximum: 50 }

end
