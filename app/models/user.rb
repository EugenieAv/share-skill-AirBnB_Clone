class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :author_services, class_name: 'Service', foreign_key: "author_id"g
  # has_many :consumer_services, class_name: 'Service', foreign_key: "consumer_id"
  has_many :professional_offers, class_name: 'Offer', foreign_key: "professional_id"

  has_many :reviews_for_my_service, class_name: 'Review', through: :services
  has_many :reviews_write_by_consumer, class_name: 'Review', through: :services

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  has_one_attached :photo

  def average_rating
    reviews = reviews_for_my_service

    return 0 if reviews.empty?

    reviews.map(&:rating).average
  end

end

# == GOOD TO KNOW ==
# ligne 21 equivaut à
# [ reviews.map { |review| review.rating} ].average

# ruby nous fournit les methodes .sum et .average
# pour calculer respectivement une somme et une moyenne

 # == TO DO ==
 # mettre des validations sur le phone number à 10 chiffres
 # mettre des validations sur l'adresse pour quelle soit reconnue => localisation
 #  avec la gem de geocoding?
