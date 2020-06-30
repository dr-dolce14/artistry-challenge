class Artist < ApplicationRecord
    has_many :joiners
    has_many :instruments, through: :joiners

    validates :name, presence: true
    validates :title, uniqueness: true
end
