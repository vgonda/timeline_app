class Event < ApplicationRecord
  validates :message, presence: true
end
