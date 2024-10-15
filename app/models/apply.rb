class Apply < ApplicationRecord
    belongs_to :geeks
    belongs_to :jobs

    validates_associated :geeks, :jobs

end
