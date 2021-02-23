class Service < ApplicationRecord
  belongs_to :author, class_name: "User"
  belongs_to :consumer, class_name: "User"
  belongs_to :category,

  has_many :reviews



end
