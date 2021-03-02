class ProfessionalCategory < ApplicationRecord
  belongs_to :category
  belongs_to :professional
end
