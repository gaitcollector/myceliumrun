class PetriDish < ApplicationRecord
  SAMPLE = ["tissue","mycelium","spores"]
  belongs_to :mushroom
  has_many :logs, as: :loggable
  belongs_to :agar_recipe
end
