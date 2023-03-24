class HeroPower < ApplicationRecord
    belongs_to :power
    belongs_to :hero
    validates :strength,presence:true
    validates :strength,inclusion: { in: %w(small medium large)}
end
