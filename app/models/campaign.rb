class Campaign < ApplicationRecord
  has_many :prototypes
  
  belongs_to :user
end
