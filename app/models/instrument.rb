class Instrument < ApplicationRecord
    has_many :joiners
    has_many :artists, through: :joiners
    
end
