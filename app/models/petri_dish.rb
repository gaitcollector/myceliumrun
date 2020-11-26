class PetriDish < ApplicationRecord
  belongs_to :mushroom
  has_many :logs, as: :loggable
end
