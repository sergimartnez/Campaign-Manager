class Prototype < ApplicationRecord
  belongs_to :compaign, optional: true
  has_many :contents
end
