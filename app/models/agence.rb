class Agence < ApplicationRecord
    belongs_to :user

    validates :name, presence: true, uniqueness: true
    validates :register_number, presence: true, uniqueness: true
    validates :road, presence: true
end
