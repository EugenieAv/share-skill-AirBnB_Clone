class Offer < ApplicationRecord
  belongs_to :professional, class_name: 'User'
  belongs_to :category
end
