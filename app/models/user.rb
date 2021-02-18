class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  has_one_attached :photo

end

 # == TO DO ==
 # mettre des validations sur le phone number à 10 chiffres
 # mettre des validations sur l'adresse pour quelle soit reconnue => localisation
 #  avec la gem de geocoding?
