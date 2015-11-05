class Quirk < ActiveRecord::Base
  validates :quote, presence: true
end
