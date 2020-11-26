class Log < ApplicationRecord
  belongs_to :loggable, polymorphic: true
  has_many :logs, as: :loggable
end
