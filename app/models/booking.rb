class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :professional, class_name: 'User'
  belongs_to :consumer, class_name: 'User'
end
